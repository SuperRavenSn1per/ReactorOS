apiDir = "apis/"

term.clear()
term.setCursorPos(1,1)
print("Loading apis...")
for i,file in pairs(fs.list(apiDir) do
   os.loadAPI(file)
end
shell.run("interface")
