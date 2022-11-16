##
 # particles.mcfunction
 # 
 # TODO: Rename file to be more reflective of what it has become.
 #
 # Created by Galdeveer.
##

# swTears resets to zero each time its suppose to cry and starts counting up
# Once it passes <maxCry> it stops crying.
# Also used as time since cry was triggered

# Makes Tears
# Makes cry sound
# Makes Warning chirp

# Is ~0.08 accurate for sound?

# Tear Particles
execute if score @s veer.fsh.swTears matches 0..6 at @s positioned ~ ~0.08 ~ run particle rain ~ ~ ~ 0.15 0.1 0.15 0.1 13
# Cry Sound
execute if score @s veer.fsh.swTears matches 0..1 at @s positioned ~ ~0.08 ~ run playsound block.sculk_sensor.clicking hostile @e[type=player, distance=..30] ~ ~ ~ 1 1.3 0.2

# Note: specifically has reduced sound range.
# TODO: Experiment with 0 min volume
# Warning Chirp
# Tag stuff is to make sure it only happens at the begining of the clock's tick. (Could become false statement?)
# if cry -2
# and if %
execute if predicate veer:fsh/sculk_watcher/warning_chirp_chance if score @s veer.fsh.swTears matches -2 if entity @s[tag=!veer.fsh.sculk_watcher.particle.onlyOnce] at @s positioned ~ ~0.08 ~ run playsound block.sculk_sensor.clicking hostile @e[type=player, distance=..20] ~ ~ ~ 0.4 1.7 0.05
# Tag stuff for above line
# TODO: Elaborate?
execute if score @s veer.fsh.swTears matches -2 run tag @s add veer.fsh.sculk_watcher.particle.onlyOnce
execute unless score @s veer.fsh.swTears matches -2 run tag @s remove veer.fsh.sculk_watcher.particle.onlyOnce