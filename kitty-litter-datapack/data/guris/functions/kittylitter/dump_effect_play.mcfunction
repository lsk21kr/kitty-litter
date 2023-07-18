# context: as cat/ocelot, at cat/ocelot

# shiver
#execute if score @s guris.kittylitter matches ..-21 run scoreboard players operation #temp guris.kittylitter = @s guris.kittylitter
#execute if score @s guris.kittylitter matches ..-21 run scoreboard players operation #temp guris.kittylitter %= #two guris.kittylitter
#execute if score @s guris.kittylitter matches ..-21 if score #temp guris.kittylitter matches 0 run tp @s ~ ~ ~ facing ^0.04 ^ ^1
#execute if score @s guris.kittylitter matches ..-21 if score #temp guris.kittylitter matches 1 run tp @s ~ ~ ~ facing ^-0.04 ^ ^1
#execute if score @s guris.kittylitter matches ..-21 run scoreboard players reset #temp guris.kittylitter
execute if score @s guris.kittylitter matches ..-21 run data modify entity @s TicksFrozen set value 140
#execute if score @s guris.kittylitter matches -20 run data modify entity @s TicksFrozen set value 0

# dig
execute if predicate guris:kittylitter/on_sand if score @s guris.kittylitter matches -20 run function guris:kittylitter/dump_effect_dig
execute if predicate guris:kittylitter/on_sand if score @s guris.kittylitter matches -17 run function guris:kittylitter/dump_effect_dig
execute if predicate guris:kittylitter/on_sand if score @s guris.kittylitter matches -14 run function guris:kittylitter/dump_effect_dig
execute if predicate guris:kittylitter/on_sand if score @s guris.kittylitter matches -7 run function guris:kittylitter/dump_effect_dig
execute if predicate guris:kittylitter/on_sand if score @s guris.kittylitter matches -4 run function guris:kittylitter/dump_effect_dig
execute if predicate guris:kittylitter/on_sand if score @s guris.kittylitter matches -1 run function guris:kittylitter/dump_effect_dig