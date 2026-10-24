local function escape_html(value)
  return tostring(value)
    :gsub("&", "&amp;")
    :gsub("<", "&lt;")
    :gsub(">", "&gt;")
    :gsub('"', "&quot;")
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
    local alt = pandoc.utils.stringify(img.caption or {})
    local src = escape_html(img.src or '')
    local title = img.title or ''
    local title_attr = title ~= '' and ' title="' .. escape_html(title) .. '"' or ''
    local figcaption = alt ~= '' and '<figcaption>' .. escape_html(alt) .. '</figcaption>' or ''

    table.insert(html, '<figure class="gallery-item">')
    table.insert(html, '<img src="' .. src .. '" alt="' .. escape_html(alt) .. '"' .. title_attr .. ' />')
    if figcaption ~= '' then
      table.insert(html, figcaption)
    end
    table.insert(html, '</figure>')
  end

  table.insert(html, '</div>')
  return pandoc.RawBlock('html', table.concat(html, '\n'))
end

