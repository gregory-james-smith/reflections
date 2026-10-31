-- Acronym filter for Pandoc
--
-- Acronyms are defined in the document using the abbreviations Pandoc extension syntax:
--   *[HTML]: Hyper Text Markup Language
--
-- The first occurrence of the acronym is wrapped in <abbr> with the definition.

local definitions = {}
local seen = {}

local function escape_html(value)
  local text = tostring(value or '')
  return text
    :gsub('&', '&amp;')
    :gsub('<', '&lt;')
    :gsub('>', '&gt;')
    :gsub('"', '&quot;')
end

local function normalize_key(value)
  return tostring(value or '')
    :gsub('%s+', '')
    :upper()
end

local function add_definition(term, definition)
  local key = normalize_key(term)
  if key ~= '' and definition and definition ~= '' then
    definitions[key] = definition
  end
end

local function render_abbr(term)
  local prefix = ''
  local suffix = ''
  local base = term

  local match_prefix, match_base, match_suffix = term:match('^([%p]*)([^%p]+)([%p]*)$')
  if match_prefix and match_base and match_suffix ~= nil then
    prefix = match_prefix
    base = match_base
    suffix = match_suffix
  end

  local key = normalize_key(base)
  local definition = definitions[key]

  if not definition or definition == '' then
    return nil
  end

  if seen[key] then
    return nil
  end

  seen[key] = true

  return pandoc.RawInline(
    'html',
    prefix .. '<abbr title="' .. escape_html(definition) .. '">' .. escape_html(base) .. '</abbr>' .. suffix
  )
end

function Pandoc(doc)
  local filtered_blocks = {}

  for _, block in ipairs(doc.blocks) do
    if block.t == 'Para' then
      local text = pandoc.utils.stringify(block.content)
      local term, definition = text:match('^%*%s*%[(.-)%]%s*:%s*(.+)$')

      if term and definition then
        add_definition(term, definition)
      else
        table.insert(filtered_blocks, block)
      end
    else
      table.insert(filtered_blocks, block)
    end
  end

  local replaced = {}
  for _, block in ipairs(filtered_blocks) do
    local transformed = pandoc.walk_block(block, {
      Str = function(el)
        local replacement = render_abbr(el.text)
        if replacement then
          return replacement
        end
        return el
      end
    })
    table.insert(replaced, transformed)
  end

  doc.blocks = replaced
  return doc
end
