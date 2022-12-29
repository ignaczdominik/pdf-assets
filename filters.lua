function raw_tex (t)
    return pandoc.RawBlock('tex', t)
  end
  
  --- Wrap code blocks in tcolorbox environments
  function CodeBlock (cb)
    return {raw_tex'\\begin{tcolorbox}', cb, raw_tex '\\end{tcolorbox}'}
  end
  
  --- Ensure that the longfbox package is loaded.
  function Meta (m)
    m['header-includes'] = {raw_tex '\\usepackage{tcolorbox}'}
    return m
  end


  --function Header (h)
  -- return {raw_tex'\\section{',h,'}'}
  --end

  function Div(el)
  if el.classes[1] == "info" then
    -- insert element in front
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{info}"))
    -- insert element at the back
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{info}"))
  end
  return el
  end

  function Div(el)
  if el.classes[1] == "tip" then
    -- insert element in front
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{tip}"))
    -- insert element at the back
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{tip}"))
  end
  return el
  end

    function Div(el)
  if el.classes[1] == "warning" then
    -- insert element in front
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{warning}"))
    -- insert element at the back
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{warning}"))
  end
  return el
  end

    function Div(el)
  if el.classes[1] == "danger" then
    -- insert element in front
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{danger}"))
    -- insert element at the back
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{danger}"))
  end
  return el
  end

    function Div(el)
  if el.classes[1] == "details" then
    -- insert element in front
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{details}"))
    -- insert element at the back
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{details}"))
  end
  return el
  end