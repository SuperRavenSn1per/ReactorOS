apiDir = "apis/"

term.clear()
term.setCursorPos(1,1)
print("Loading apis...")
for i,file in pairs(fs.list(apiDir)) do
   os.loadAPI(apiDir.."/"..file)
end
term.clear()
term.setCursorPos(1,1)
write("Welcome to ")
term.setTextColor(colors.yellow)
write("ReactorOS ")
term.setTextColor(colors.white)
print("by SuperRavenSn1per")
xText.centerWrite(" ReactorOS ", colors.white, true, colors.yellow, 0)
sleep(5)
shell.run("interface")
