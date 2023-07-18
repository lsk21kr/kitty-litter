# context: as cat, at cat
# set ai for sitting 2 and 0
execute if score @s guris.kittylitter_status matches 2 run data remove entity @s NoAI
execute if score @s guris.kittylitter_status matches 0 run data remove entity @s NoAI

# unset sitting for sitting 1 and 0
execute if score @s guris.kittylitter_status matches 1 run data modify entity @s Sitting set value 0
execute if score @s guris.kittylitter_status matches 0 run data modify entity @s Sitting set value 0

# change block
execute unless predicate guris:kittylitter/on_sand run function guris:kittylitter/dump_failed_cat
execute if predicate guris:kittylitter/on_sand run setblock ~ ~-1 ~ minecraft:suspicious_sand{LootTable:"guris:kittylitter/cat_excrement"} replace

# reset sitting score
scoreboard players reset @s guris.kittylitter_status
