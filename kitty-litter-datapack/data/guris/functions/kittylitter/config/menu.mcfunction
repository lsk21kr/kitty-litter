# context: command
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"                   Kitty Litter "},{"text":"/","color":"gray"},{"text":" Global Settings"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

execute if score config_kittylitter_shiver guris.kittylitter matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function guris:kittylitter/config/toggle/shiver"}},{"text":" Shivers","bold":true},{"text":": Cats/ocelots shiver when in urge of excretion."}]
execute unless score config_kittylitter_shiver guris.kittylitter matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function guris:kittylitter/config/toggle/shiver"}},{"text":" Shivers","bold":true},{"text":": Cats/ocelots don't shiver even when in urge of excretion."}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set config_kittylitter_cats_cooldown guris.kittylitter "},"hoverEvent":{"action":"show_text","value":"Default: 24000, Min: 200"}},{"text":" Cat excrement cooldown","hoverEvent":{"action":"show_text","value":"Cat excretes after this ticks."}},{"text":" (Current: ","color":"gray"},{"score":{"name":"config_kittylitter_cats_cooldown","objective":"guris.kittylitter"},"color":"gray"},{"text": ")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set config_kittylitter_cats_delay guris.kittylitter "},"hoverEvent":{"action":"show_text","value":"Default: 100, Min: 40"}},{"text":" Cat excrement delay","hoverEvent":{"action":"show_text","value":"Cat will excrete for this amout of ticks."}},{"text":" (Current: ","color":"gray"},{"score":{"name":"config_kittylitter_cats_delay","objective":"guris.kittylitter"},"color":"gray"},{"text": ")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set config_kittylitter_ocelots_cooldown guris.kittylitter "},"hoverEvent":{"action":"show_text","value":"Default: 24000, Min: 200"}},{"text":" Ocelot excrement cooldown","hoverEvent":{"action":"show_text","value":"Ocelot excretes after this ticks."}},{"text":" (Current: ","color":"gray"},{"score":{"name":"config_kittylitter_ocelots_cooldown","objective":"guris.kittylitter"},"color":"gray"},{"text": ")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set config_kittylitter_ocelots_delay guris.kittylitter "},"hoverEvent":{"action":"show_text","value":"Default: 100, Min: 40"}},{"text":" Ocelot excrement delay","hoverEvent":{"action":"show_text","value":"Ocelot will excrete for this amout of ticks."}},{"text":" (Current: ","color":"gray"},{"score":{"name":"config_kittylitter_ocelots_delay","objective":"guris.kittylitter"},"color":"gray"},{"text": ")","color":"gray"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

function guris:kittylitter/config/mute_set