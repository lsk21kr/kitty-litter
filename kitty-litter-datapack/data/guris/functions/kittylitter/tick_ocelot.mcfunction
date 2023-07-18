# context: as cat/ocelot, at cat/ocelot
# NoAI mob is ignored
execute unless score @s guris.kittylitter_status matches 0.. if entity @s[nbt={NoAI:1b}] if entity @s[tag=!guris.kittylitter] run return 0

# set needs of new cats/ocelots
execute unless score @s guris.kittylitter = @s guris.kittylitter run scoreboard players set @s guris.kittylitter 0

# add needs to cats/ocelots unless full or dumping time counting
execute if score @s guris.kittylitter < config_kittylitter_ocelots_cooldown guris.kittylitter run scoreboard players add @s guris.kittylitter 1

# shiver if needs to take dump but cannot
execute if score config_kittylitter_shiver guris.kittylitter matches 1 if score @s guris.kittylitter >= config_kittylitter_ocelots_cooldown guris.kittylitter run data modify entity @s TicksFrozen set value 140

# try to take a dump (set status) - will start the motion
execute if score @s guris.kittylitter >= config_kittylitter_ocelots_cooldown guris.kittylitter if predicate guris:kittylitter/on_sand run function guris:kittylitter/dump_start_ocelot

# play effect
execute if score @s guris.kittylitter matches ..-1 run function guris:kittylitter/dump_effect_play

# dumping end - will end the motion and change the block
execute if score @s guris.kittylitter matches 0 run function guris:kittylitter/dump_end_ocelot