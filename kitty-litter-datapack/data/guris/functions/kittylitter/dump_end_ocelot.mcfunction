# context: as ocelot, at ocelot
# set ai for sitting 0
execute if score @s guris.kittylitter_status matches 2 run data remove entity @s NoAI
execute if score @s guris.kittylitter_status matches 0 run data remove entity @s NoAI

execute unless predicate guris:kittylitter/on_sand run function guris:kittylitter/dump_failed_ocelot

# change block, if in jungle (2, 3) make ocelot excrement
execute if predicate guris:kittylitter/on_sand if score @s guris.kittylitter_status matches 2.. run function guris:kittylitter/dump_bury_ocelot
execute if predicate guris:kittylitter/on_sand unless score @s guris.kittylitter_status matches 2.. run function guris:kittylitter/dump_bury_cat

# reset sitting score
scoreboard players reset @s guris.kittylitter_status
