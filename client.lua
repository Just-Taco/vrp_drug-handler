-- Created by Taco
-- Created by Taco
startet = true

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Ped = GetPlayerPed(-1)
        if startet == true then
                if GetDistanceBetweenCoords(GetEntityCoords(Ped),-184.52844238281,-1539.4727783203,34.359180450439,true) <= 1 then
                    DrawText3D(-184.52844238281,-1539.4727783203,34.359180450439,"~w~Tryk [~r~E~w~] for at købe noget kokain")
                    if IsControlJustPressed(1, 38) then
                        RequestAnimDict("mp_common")
            while not HasAnimDictLoaded('mp_common') do
                Citizen.Wait(500)
            end
 
            TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
            exports['progressBars']:startUI(10000, "Køber noget Kokain!")
            Citizen.Wait(10000)
            ClearPedTasksImmediately(GetPlayerPed(-1))
                        TriggerServerEvent("Kokain")
                    end
                end
            end
        end
    end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Ped = GetPlayerPed(-1)
        if startet == true then
                if GetDistanceBetweenCoords(GetEntityCoords(Ped),-173.63192749023,-1547.2337646484,35.127380371094,true) <= 1 then
                    DrawText3D(-173.63192749023,-1547.2337646484,35.127380371094,"~w~Tryk [~r~E~w~] for at købe noget Skunk")
                    if IsControlJustPressed(1, 38) then
                        RequestAnimDict("mp_common")
            while not HasAnimDictLoaded('mp_common') do
                Citizen.Wait(100)
            end
 
            TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
            exports['progressBars']:startUI(10000, "Køber noget Skunk!")
            Citizen.Wait(10000)
            ClearPedTasksImmediately(GetPlayerPed(-1))
                        TriggerServerEvent("Skunk")
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1)
            local Ped = GetPlayerPed(-1)
            if startet == true then
                    if GetDistanceBetweenCoords(GetEntityCoords(Ped),-175.00053405762,-1560.84765625,35.361545562744,true) <= 1 then
                        DrawText3D(-175.00053405762,-1560.84765625,35.361545562744,"~w~Tryk [~r~E~w~] for at købe noget LSD")
                        if IsControlJustPressed(1, 38) then
                            RequestAnimDict("mp_common")
                while not HasAnimDictLoaded('mp_common') do
                    Citizen.Wait(100)
                end
     
                TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
                            exports['progressBars']:startUI(10000, "Køber noget LSD!")
                            Citizen.Wait(10000)
                            ClearPedTasksImmediately(GetPlayerPed(-1))
                            TriggerServerEvent("lsd")
                        end
                    end
                end
            end
        end)

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    SetTextScale(0.38, 0.38)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
end

    local npc = {
      {-184.52844238281,-1539.4727783203,33.359180450439,"Kokain Sælger",216.15406799316,0x91CA3E2C,"a_m_y_juggalo_01"},
      {-173.63192749023,-1547.2337646484,34.127380371094,"Skunk Sælger",71.937110900879,0x132C1A8E,"a_m_y_latino_01"},
      {-175.00053405762,-1560.84765625,34.361545562744,"lsd Sælger",71.937110900879,0x132C1A8E,"a_m_y_latino_01"},
    }
    
    Citizen.CreateThread(function()
    
      for k,v in pairs(npc) do
        RequestModel(GetHashKey(v[7]))
        while not HasModelLoaded(GetHashKey(v[7])) do
          Wait(1)
        end
    
        RequestAnimDict("mini@strip_club@idles@bouncer@base")
        while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
          Wait(1)
        end
        ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
        SetEntityHeading(ped, v[5])
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
      end
    end)

    RegisterCommand("KS:getCoordsH", function(source,args)
        print(GetEntityCoords(PlayerPedId()).." "..GetEntityHeading(PlayerPedId()))
    end)