                          --(  ___ \ (  ___  )(  ____ \\__   __/(  ___  )( (    /|(  ____ \| \    /\\__   __/
                          --| (   ) )| (   ) || (    \/   ) (   | (   ) ||  \  ( || (    \/|  \  / /   ) (   
                          --| (__/ / | |   | || (_____    | |   | |   | ||   \ | || (_____ |  (_/ /    | |   
                          --|  __ (  | |   | |(_____  )   | |   | |   | || (\ \) |(_____  )|   _ (     | |   
                          --| (  \ \ | |   | |      ) |   | |   | |   | || | \   |      ) ||  ( \ \    | |   
                          --| )___) )| (___) |/\____) |   | |   | (___) || )  \  |/\____) ||  /  \ \___) (___
                          --|/ \___/ (_______)\_______)   )_(   (_______)|/    )_)\_______)|_/    \/\_______/
                                                                                 
  --_______  _______  ______   _______  _______ _________ _______  _______  _______    _   _    _______   _____    _____   _______ 
  ---|\     /|(  ____ \(  ____ )(  ___ \ (  ___  )(  ____ \\__   __/(  ___  )(  ____ )/ ___   )  ( ) ( )  (  __   ) / ___ \  / ___ \ (  ____ \
  --| )   ( || (    \/| (    )|| (   ) )| (   ) || (    \/   ) (   | (   ) || (    )|\/   )  | _| |_| |_ | (  )  |( (___) )( (   ) )| (    \/
  --| (___) || (__    | (____)|| (__/ / | (___) || |         | |   | (___) || (____)|    /   )(_   _   _)| | /   | \     / ( (___) || (____  
  --|  ___  ||  __)   |     __)|  __ (  |  ___  || |         | |   |  ___  ||     __)   /   /  _| (_) |_ | (/ /) | / ___ \  \____  |(_____ \ 
  ---| (   ) || (      | (\ (   | (  \ \ | (   ) || |         | |   | (   ) || (\ (     /   /  (_   _   _)|   / | |( (   ) )      ) |      ) )
  --| )   ( || (____/\| ) \ \__| )___) )| )   ( || (____/\___) (___| )   ( || ) \ \__ /   (_/\  | | | |  |  (__) |( (___) )/\____) )/\____) )
   --|/     \|(_______/|/   \__/|/ \___/ |/     \|(_______/\_______/|/     \||/   \__/(_______/  (_) (_)  (_______) \_____/ \______/ \______/ 





local bostonskitelfon = true
local brudnesiano = true 
local playerPed = PlayerPedId()
Citizen.CreateThread(function()
  while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  end
end)

Citizen.CreateThread(function()
       while true do
         Citizen.Wait(1200)
        if IsEntityInWater(playerPed) and IsPedSwimming(playerPed) then
          TriggerServerEvent('bostonprzemakanie:siano')
		  if bostonskitelfon == true then
		  TriggerServerEvent('bostonprzemakanie:fon')
		   if brudnesiano == true then
		  TriggerServerEvent('bostonprzemakanie:brudne')
		   end
		  end
      end
    end
end)
