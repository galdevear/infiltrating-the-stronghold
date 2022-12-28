##
 # Date: 12/20/22
 # Created by Galdeveer.
##

# Cry Sound
execute if score @s veer.its.sculk_watcher.cry.battlecry matches -2..1 at @s run playsound block.sculk_sensor.clicking hostile @e[type=player, distance=..30] ~ ~ ~ 1 1.3
# Makes -3 to -2 tick twice as fast as the others so you only get one chirp
execute if score @s veer.its.sculk_watcher.cry.battlecry matches -3 run scoreboard players set @s veer.its.sculk_watcher.cry.battlecry -2