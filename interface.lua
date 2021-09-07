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
        if isActive == true then
            term.clear()
            term.setCursorPos(1,1)
            term.setTextColor(colors.yellow)
            print("Active Reactor Data:")
            
        else
            if peripheral.find("BigReactors-Reactor") then
                term.setBackgroundColor(colors.black)
                term.clear()
                xText.centerWrite(" >REACTOR NOT ACTIVE< ", colors.black, true, colors.red, 0)
                sleep(0.5)
                xText.centerWrite("> REACTOR NOT ACTIVE <", colors.black, true, colors.red, 0)
                sleep(0.5)
            else
                os.reboot()
            end
        end    
    end 
elseif peripheral.find("BigReactors-Reactor") == nil then
    term.clear()
    xText.centerWrite(">CANT FIND REACTOR<", colors.black, true, colors.red, 0)      
    sleep(5)
    os.reboot()
end
