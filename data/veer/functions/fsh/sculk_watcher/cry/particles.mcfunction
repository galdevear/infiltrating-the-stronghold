##
 # Date: 12/20/22
 # Created by Galdeveer.
##

# Tear Particles
execute if score @s veer.fsh.swTears matches 0..6 at @s positioned ~ ~0.08 ~ run particle rain ~ ~ ~ 0.15 0.1 0.15 0.1 13
# Cry Sound
execute if score @s veer.fsh.swTears matches -2..1 at @s positioned ~ ~0.08 ~ run playsound block.sculk_sensor.clicking hostile @e[type=player, distance=..30] ~ ~ ~ 1 1.3