term.clear()
term.setCursorPos(1,1)
 
print("Getting connection...")

if peripheral.find("BigReactors-Reactor") then
    reactor = peripheral.find("BigReactors-Reactor")
    term.clear()
    term.setCursorPos(1,1)
    write("Welcome to ")
    term.setTextColor(colors.yellow)
    write("ReactorOS ")
    term.setTextColor(colors.white)
    print("by SuperRavenSn1per")
    xText.centerWrite(" ReactorOS ", colors.white, true, colors.yellow, 0)
    sleep(5)
    while true do
        sleep(0.1)
        isActive = reactor.getActive()
        term.clear()
        xText.centerTop("-=[ ReactorOS ]=-", colors.yellow)
        if isActive == true then
            term.setCursorPos(1,3)
            term.setTextColor(colors.green)
            write("Active Reactor Data:")
            term.setCursorPos(1,5)
        else
            if peripheral.find("BigReactors-Reactor") then
                 term.setCursorPos(1,3)
                 term.setTextColor(colors.red)
                 write("Reactor inactive, press [ENTER] to activate")
                 event, button = os.pullEvent("key")
                 if button == 28 then
                     reactor.setActive(true)
                 end
            else
                os.reboot()
            end
        end    
    end 
elseif peripheral.find("BigReactors-Reactor") == nil then
    term.clear()
    for i = 1,5 do
     xText.centerWrite(" >REACTOR NOT FOUND< ", colors.black, true, colors.red, 0)          
     sleep(0.5)
     xText.centerWrite("> REACTOR NOT FOUND <", colors.black, true, colors.red, 0)   
     sleep(0.5)
    end
    os.reboot()
end
