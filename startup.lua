reactor = peripheral.find("BigReactors-Reactor")
 
term.clear()
term.setCursorPos(1,1)
 
print("Getting connection...")
 
function centerText(text, yOffset, highlight, txtColor, hColor)
    w,h = term.getSize()
    oldBgColor = term.getBackgroundColor()
    oldTxtColor = term.getTextColor()
    
    term.setTextColor(txtColor)
    term.setBackgroundColor(hColor)   
    term.setCursorPos(math.floor(w / 2 - string.len(text) / 2), math.floor(h / 2 - yOffset))
    term.write(text)
    if highlight == true then
        term.setCursorPos(math.floor(w / 2 - string.len(text) / 2), math.floor(h / 2 - yOffset - 1))
        for i = 1,string.len(text) do
            write(" ")
        end
        term.setCursorPos(math.floor(w / 2 - string.len(text) / 2), math.floor(h / 2 - yOffset + 1))
        for i = 1, string.len(text) do
            write(" ")
        end
    end
    term.setTextColor(oldTxtColor)
    term.setBackgroundColor(oldBgColor)
end
 
function writeVal(text,val,color)
    write(text..": ")
    term.setTextColor(color)
    write(val)
    term.setTextColor(colors.white)
    print("")
end
 
term.clear()
term.setCursorPos(1,1)
write("Welcome to ")
term.setTextColor(colors.yellow)
write("ReactorOS ")
term.setTextColor(colors.white)
print("by SuperRavenSn1per")
centerText(" ReactorOS ", 0, true, colors.white, colors.yellow)
sleep(5)
 
if peripheral.find("BigReactors-Reactor") then
    while true do
        sleep(0.1)
        isActive = reactor.getActive()
        if isActive == true then
            term.clear()
            term.setCursorPos(1,1)
            term.setTextColor(colors.yellow)
            print("Active Reactor Data:")
            term.setCursorPos(1,3)
            term.setTextColor(colors.white)
            fuelTemp = math.floor(reactor.getFuelTemperature())
            casingTemp = math.floor(reactor.getCasingTemperature())
            ept = math.floor(reactor.getEnergyProducedLastTick()).." p/t"
            fclt = math.ceil(reactor.getFuelConsumedLastTick()).." p/t"
            writeVal("Fuel Temperature",fuelTemp,colors.green)
            writeVal("Casing Temperature",casingTemp,colors.green)
            writeVal("Energy",ept,colors.green)
            writeVal("Fuel Usage",fclt,colors.green)
        else
            if peripheral.find("BigReactors-Reactor") then
                term.setBackgroundColor(colors.black)
                term.clear()
                centerText(" >REACTOR NOT ACTIVE< ", 0, true, colors.black, colors.red)
                sleep(0.5)
                centerText("> REACTOR NOT ACTIVE <", 0, true, colors.black, colors.red)
                sleep(0.5)
            else
                os.reboot()
            end
        end    
    end 
elseif peripheral.find("BigReactors-Reactor") == nil then
    term.clear()
    centerText("> NO REACTOR CONNECTED <", 0, true, colors.black, colors.red)      
    sleep(5)
    os.reboot()
end
