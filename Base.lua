function1_state = " ▫ OFF"
pass = ""  -- DONT enter the password here
update = false
hex1 = "" --paste your hex string here preferably 143 bytes copied from HxD 3 rows of 16 bytes
--example = "EB 2B BB 6D E9 23 01 6D F5 13 00 F9 F4 4F 03 A9 FD 7B 04 A9 FD 03 01 91 F3 03 00 AA 74 36 40 F9 68 1A 40 BD 74 00 00 B5 E0 03 1F AA A9 01 FB 97"
fov_address = "" --You need to find the fov address for your game
true1 = "20 00 80 D2 C0 03 5F D6"
false1 = "00 00 80 D2 C0 03 5F D6"
nop = "1F 20 03 D5 C0 03 5F D6"

-- this form of binary patching allows for faster toggle times in game guardian (in comparison to a float search), and the decleration of the string allows for a faster update time instead of handling the string yourself

function Main()
    lol = gg.multiChoice({
    "1️⃣Function One1️⃣",
    "👁️Fov👁️",
    "🐲Help + Credits🐲",
    "♦️Exit♦️"},nil,
    [[VIP Key Script By:
    ⚜️Coders name here⚜️
    Game here
    Version here
    Aarch here   ]])
    if lol==nil then gg.sleep(1)
    else
    if lol[1] then function1() end
    end
    menuk=-1
	gg.setVisible(false)
end 

function function1()
    if function1_state == " ▫ OFF" then 
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("h"..hex1, gg.TYPE_BYTE)
    gg.getResults(10000)
    gg.editAll("h"..true1, gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast(" Function 1 Activated🈯 ")
    function1_state = " ▫ ON"
	else


    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("h"..true1..string.sub(hex1,24,143), gg.TYPE_BYTE)
    gg.getResults(8)
    gg.editAll("h"..string.sub(hex1,0,23), gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast(" Function 1 Deactivated🈵 ")
    function1_state = " ▫ OFF"
    end
end

function fov()
    fovv=gg.choice({"💛1x","💚2x","💙3x","💜Extreme","Custom","❤️Off","⬅️Back"},nil,"Choose one [FOV]:")
    if fovv==1 then
    gg.getListItems(fov1)
    fov1[1].value = 300
    gg.setValues(fov1)
    gg.toast(" Fov Activated🈯 ")
    fovstate = " ▫ ON"
    end
    if fovv==2 then
    gg.getListItems(fov1)
    fov1[1].value = 250
    gg.setValues(fov1)
    gg.toast(" Fov Activated🈯 ")
    fovstate = " ▫ ON"
    end
    if fovv==3 then
    gg.getListItems(fov1)
    fov1[1].value = 200
    gg.setValues(fov1)
    gg.toast(" Fov Activated🈯 ")
    fovstate = " ▫ ON"
    end
    if fovv==4 then
    gg.getListItems(fov1)
    fov1[1].value = 150
    gg.setValues(fov1)
    gg.toast(" Fov Activated🈯 ")
    fovstate = " ▫ ON"
    end
    if fovv==5 then
    gg.getListItems(fov1)
    vv = gg.prompt({"Set Value 100~360"},nil)
    if vv[1] then
    fov1[1].value = vv[1]
    gg.setValues(fov1)
    gg.sleep(1)
    end
    if vv==nil then gg.sleep(1)
    end
    end
    
    if fovv==6 then
    gg.getListItems(fov1)
    fov1[1].value = 360
    gg.setValues(fov1)
    gg.toast(" Fov Deactivated🈵 ")
    fovstate = " ▫ OFF"
    end
    if fovv==7 then Main() end
    if fovv==nil then gg.sleep(1) end
end

function noselect()
    print([[    ♠️CONTACT♠️
    ➡️Youtube:
    ➡️Discord:]])
    os.exit()
end

function exit()
    print([[    ♠️CONTACT♠️
    ➡️Youtube:
    ➡️Discord:]])
    os.exit()
end

function help()
    gg.alert([[➡️Coder:
    ➡️Game:
    ➡️Arch:
    ➡️Version:
    ➡️Youtube:
    ➡️Discord:
    
    -HELP-
    ]])
end

function update()
    gg.alert("🔰SCRIPT IS BEING UPDATED PLEASE WAIT🔰")
end

function changelog()
gg.alert([[❗Changelog❗
1.0
Normal Script With Bugs]])

    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("360",gg.TYPE_FLOAT)
    gg.getResults(10)
    gg.searchAddress(fov_address)
    fov1 = gg.getResults(1)
    gg.addListItems(fov1)
    gg.clearResults()

    Main()
end

local Pass = {""}  -- pass goes here

login = gg.prompt({"Password"}, login, {"text"})
if login == nil then 
    os.exit() 
end
if update == true then
    update()
    os.exit()
end
if login[1] == Pass[1] then -- can be made for multiple users with multiple passes
    gg.toast("Welcome User")
    pass = "correct"
    placeholder = 1 
    changelog()
end
if login[1] ~= Pass[1] then 
    gg.alert("⚠️ WRONG PASS ⚠️ get keys at insert link here")
end




if pass == "correct" then 
while true do
if gg.isVisible(true) then
gg.setVisible(false)
Main()
end
gg.sleep(1)
end
end