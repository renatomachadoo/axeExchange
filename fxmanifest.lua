fx_version("cerulean")
game("gta5")

author("AXE Scripts")
description("AXE Scripts value exchange.")

version("1.0.0")

shared_scripts({
	"config/*.lua",
})

server_scripts({
	"server/*.lua",
})

lua54("yes")
use_experimental_fxv2_oal("yes")
