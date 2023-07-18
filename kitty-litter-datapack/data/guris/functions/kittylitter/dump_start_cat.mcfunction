# context: as cat, at cat
scoreboard players set @s guris.kittylitter_status 0
execute if data entity @s NoAI if entity @s[nbt={NoAI:1b}] run scoreboard players add @s guris.kittylitter_status 1
execute if data entity @s Sitting if entity @s[nbt={Sitting:1b}] run scoreboard players add @s guris.kittylitter_status 2

data modify entity @s Sitting set value 1
data modify entity @s NoAI set value 1

# excrement delay
scoreboard players operation @s guris.kittylitter = config_kittylitter_cats_delay guris.kittylitter
scoreboard players operation @s guris.kittylitter -= config_kittylitter_cats_delay guris.kittylitter
scoreboard players operation @s guris.kittylitter -= config_kittylitter_cats_delay guris.kittylitter
