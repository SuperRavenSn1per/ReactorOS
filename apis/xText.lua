function centerWrite(text, txtColor, highlight, hlgtColor, yOffset)
  if txtColor == nil then
    textColor = colors.white
  elseif yOffset == nil then
    yOffset = 0
  elseif highlight == nil then
    highlight = false
    hlgtColor = colors.black
  end
  
  w, h = term.getSize()
  currentBg = term.getBackgroundColor()
  currentTxt = term.getTextColor()
  
  term.setCursorPos(math.floor(w / 2 - string.len(text) / 2), math.floor(h / 2) - yOffset)
  write(text)
  if highlight == true then
    term.setCursorPos(math.floor(w / 2 - string.len(text) / 2), math.floor(h / 2) - yOffset - 1)
    for i = 1,string.len(text) do
      write(" ")
    end
    term.setCursorPos(math.floor(w / 2 - string.len(text) / 2), math.floor(h / 2) - yOffset + 1)
    for i = 1,string.len(text) do
      write(" ")
    end
  end
end
