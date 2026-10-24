local function escape_html(value)
  local text = tostring(value or '')
  return text
    :gsub("&", "&amp;")
    :gsub("<", "&lt;")
    :gsub(">", "&gt;")
    :gsub('"', "&quot;")
end

local function render_inline_html(inlines)
  if not inlines or #inlines == 0 then
    return ''
  end

  local doc = pandoc.Pandoc({ pandoc.Plain(inlines) }, {})
  local html = pandoc.write(doc, 'html5')
  html = html:gsub('^%s*<p>', '')
  html = html:gsub('</p>%s*$', '')
  return html
end

function Para(para)
  local images = {}

  for _, el in ipairs(para.content) do
    if el.t == 'Image' then
      table.insert(images, el)
    elseif el.t == 'Space' or el.t == 'SoftBreak' or el.t == 'LineBreak' then
      -- ignore whitespace between adjacent images
    else
      return nil
    end
  end

  if #images < 2 then
    return nil
  end

  local html = { '<div class="gallery">' }

  for _, img in ipairs(images) do
    local caption = img.caption or {}
    local alt = pandoc.utils.stringify(caption)
    local caption_html = render_inline_html(caption)

    table.insert(html, '<figure class="gallery-item">')
    table.insert(html, '<img src="' .. escape_html(img.src or '') .. '" alt="' .. escape_html(alt) .. '"' .. (img.title and img.title ~= '' and ' title="' .. escape_html(img.title) .. '"' or '') .. ' />')
    if caption_html ~= '' then
      table.insert(html, '<figcaption>' .. caption_html .. '</figcaption>')
    end
    table.insert(html, '</figure>')
  end

  table.insert(html, '</div>')
  return pandoc.RawBlock('html', table.concat(html, '\n'))
end

