local currentPercentage = 0

local function updatePercentage()
	currentPercentage = math.random(-100, 100)
end

Citizen.CreateThread(function()
	while true do
		updatePercentage()
		Citizen.Wait(Config.TimeToChangePercentageInMiliseconds)
	end
end)

local function calculatePrice(price)
	local fluctuation = (currentPercentage / 100) * price
	local finalPrice = price + fluctuation

	return finalPrice
end

local function getCurrentPercentage()
	return currentPercentage
end

RegisterCommand(Config.CommandToCheckExchangePercentage, function(source)
	local src = source

	if src == 0 then
		print("This command cannot be used from the console.")
		return
	end

	local percentage = getCurrentPercentage()
	TriggerClientEvent("chat:addMessage", src, {
		args = { "Exchange Percentage", "Current percentage is: " .. percentage .. "%" },
	})
end, false)

exports("GetCurrentPercentage", getCurrentPercentage)
exports("CalculatePrice", calculatePrice)
