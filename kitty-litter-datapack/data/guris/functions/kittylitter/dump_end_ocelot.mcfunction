# context: as ocelot, at ocelot
# set ai for sitting 0
execute if score @s guris.kittylitter_status matches 2 run data remove entity @s NoAI
execute if score @s guris.kittylitter_status matches 0 run data remove entity @s NoAI

# change block, if in jungle (2, 3) make ocelot excrement
execute if predicate guris:kittylitter/on_sand if score @s guris.kittylitter_status matches 2.. run setblock ~ ~-1 ~ minecraft:suspicious_sand{LootTable:"guris:kittylitter/ocelot_excrement"} replace
execute if predicate guris:kittylitter/on_sand unless score @s guris.kittylitter_status matches 2.. run setblock ~ ~-1 ~ minecraft:suspicious_sand{LootTable:"guris:kittylitter/cat_excrement"} replace

execute unless predicate guris:kittylitter/on_sand run function guris:kittylitter/dump_failed_ocelot

# reset sitting score
scoreboard players reset @s guris.kittylitter_status
