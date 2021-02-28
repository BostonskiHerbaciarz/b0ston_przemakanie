
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





ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent("bostonprzemakanie:siano")
AddEventHandler("bostonprzemakanie:siano", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local siano = xPlayer.getMoney()
     if siano > 0 then
     xPlayer.removeMoney(kasa)
	 TriggerClientEvent('esx:showNotification', source, ('Zmokły ci pieniądze właśnie straciłeś : ~r~$%s'):format(siano))

    end
end)

RegisterServerEvent("bostonprzemakanie:fon")
AddEventHandler("bostonprzemakanie:fon", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local fon = xPlayer.getInventoryItem("phone")["count"]
     if fon > 0 then
     xPlayer.removeInventoryItem("phone", telefon)
	 TriggerClientEvent('esx:showNotification', source, '~r~Zmókł ci telefon')
    end
end)

RegisterServerEvent("bostonprzemakanie:brudne")
AddEventHandler("bostonprzemakanie:brudne", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local brudnesianko = xPlayer.getAccount('black_money').money
     if brudnesianko > 0 then
     xPlayer.removeAccountMoney('black_money', brudne)
	 TriggerClientEvent('esx:showNotification', source, ('Zmokły ci brudne pieniadze właśnie straciłeś : ~r~$%s'):format(brudna))
    end
end)
