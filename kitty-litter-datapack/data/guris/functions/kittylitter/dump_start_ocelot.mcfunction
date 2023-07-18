# context: as ocelot, at ocelot
scoreboard players set @s guris.kittylitter_status 0
execute if data entity @s NoAI if entity @s[nbt={NoAI:1b}] run scoreboard players add @s guris.kittylitter_status 1
execute if predicate guris:kittylitter/in_jungle run scoreboard players add @s guris.kittylitter_status 2

data modify entity @s NoAI set value 1

# excrement delay
scoreboard players operation @s guris.kittylitter = config_kittylitter_ocelots_delay guris.kittylitter
scoreboard players operation @s guris.kittylitter -= config_kittylitter_ocelots_delay guris.kittylitter
scoreboard players operation @s guris.kittylitter -= config_kittylitter_ocelots_delay guris.kittylitter