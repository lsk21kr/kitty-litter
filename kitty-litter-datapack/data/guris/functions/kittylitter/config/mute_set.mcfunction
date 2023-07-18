# context: mcfunction internal
execute store result score mute guris.kittylitter run gamerule sendCommandFeedback
execute if score mute guris.kittylitter matches 1 run schedule function guris:kittylitter/config/mute_reset 1t
gamerule sendCommandFeedback false