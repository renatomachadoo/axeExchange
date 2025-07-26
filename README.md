# AXE Exchange

## Description

A lightweight standalone fivem script that simulates price fluctuation with configurable intervals. Includes a command to check the current fluctuation, and can be easily integrated with other resources.

## Usage Example:

### Calculating item price

```lua
  -- Example usage of axeExchange export to calculate dynamic price and process sale
  -- Imagine we have the player variable

  local item = {
    name = "burger",
    price = 1000
  }

  -- Calculate the current fluctuated price using the export
  local newPrice = exports['axeExchange']:CalculatePrice(item.price)

  -- Attempt to remove the item from the player's inventory
  local successRemovingItem = removePlayerItem(player, item.name, 1)

  if not successRemovingItem then
    print("Failed to remove item from player inventory")
    return
  end

  -- Add the calculated money to player's bank with a reason for transaction
  addPlayerMoney(player, "bank", newPrice, "Burger sale")
```

### Checking current percentage

```lua
  -- Example usage to check current percentage

  local currentPercentage = exports['axeExchange']:GetCurrentPercentage()
  print("Current fluctuation percentage: " .. currentPercentage .. "%")
```
