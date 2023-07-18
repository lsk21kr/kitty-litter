# context: command
# toggle option
execute if score config_kittylitter_shiver guris.kittylitter matches 1.. run scoreboard players set config_kittylitter_shiver guris.kittylitter 2
execute unless score config_kittylitter_shiver guris.kittylitter matches 1.. run scoreboard players set config_kittylitter_shiver guris.kittylitter 1
execute if score config_kittylitter_shiver guris.kittylitter matches 2.. run scoreboard players set config_kittylitter_shiver guris.kittylitter 0

# play sound
execute if score config_kittylitter_shiver guris.kittylitter matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
execute if score config_kittylitter_shiver guris.kittylitter matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2

# print options
function guris:kittylitter/settings
function guris:kittylitter/config/mute_set

