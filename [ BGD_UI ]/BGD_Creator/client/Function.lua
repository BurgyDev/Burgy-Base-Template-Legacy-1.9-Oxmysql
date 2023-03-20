ESX = exports["es_extended"]:getSharedObject()

IndexList = {
    List1 = 1,
    List2 = 1,
    List3 = 1,
    List4 = 1,
    List5 = 1, 
    List6 = 1
}

IndexPanel = {
    ChevColor = {primary = {1, 1}, secondary = {1, 1}},
    SourColor = {primary = {1, 1}, secondary = {1, 1}},
    BarColor = {primary = {1, 1}, secondary = {1, 1}},
    percent1 = 0.0,
    percent2 = 0.0
}

-- imput
function Imput(TextEntry, ExampleText, MaxStringLenght)
    AddTextEntry("FMMC_KEY_TIP1", TextEntry)
    blockinput = true
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Wait(0)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Wait(500)
        blockinput = false
        return result
    else
        Wait(500)
        blockinput = false
        return nil
    end
end

-- playerSpawned
local FirstSpawn = true
local PlayerLoaded = false

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerLoaded = true
end)

AddEventHandler('playerSpawned', function()
    CreateThread(function()
        while not PlayerLoaded do
            Wait(0)
        end
        if FirstSpawn then
            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
                if skin == nil then
                    DisplayRadar(false)
                    introcam = CreateCam("DEFAULT_SCRIPTED_CAMERA", false)
                    SetCamActive(introcam, true)
                    SetCamCoord(introcam, 701.47, 1031.08, 330.57)
                    ShakeCam(introcam, "HAND_SHAKE", 0.1)
                    SetCamRot(introcam, -0, -0, -11.48)
                    SetCamActive(introcam, true)
                    RenderScriptCams(1, 0, 500, false, false)
                    TriggerEvent('skinchanger:loadSkin', {sex = 0})
                    SetEntityCoords(PlayerPedId(), -594.69891357422, 56.571430206299, 95.999267578125, false)
                    SetEntityHeading(PlayerPedId(), 175.74803161621)
                    FreezeEntityPosition(PlayerPedId(), true)
                    CreatorMenu()
                else
                    TriggerEvent('skinchanger:loadSkin', skin)
                end
            end)
            FirstSpawn = false
        end
    end)
end)

-- Cam 

function SkinCam()
    skincam = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
    SetCamCoord(skincam, -594.69891357422, 55.2, 97.5, 0.0, 0.0, 0.0, 15.0, false, 0)
    RenderScriptCams(1000, 1000, 1000, 1000, 1000)
    PointCamAtCoord(skincam, -594.69891357422, 55.2, 97.5)     	
end

-- End of the creation

function EndCreator()
    DoScreenFadeOut(1000)
    Wait(1000)
    DoScreenFadeIn(1000)
    TriggerServerEvent("BGD_Creator:setPlayerToNormalBucket")
    FreezeEntityPosition(PlayerPedId(), false)
    SetEntityCoords(PlayerPedId(), Creator.spawnPos.x, Creator.spawnPos.y, Creator.spawnPos.z)
    DisplayRadar(true)
end 
