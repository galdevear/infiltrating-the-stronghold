##
 # Date: 12/20/22
 # 
 # Counts down and eventually removes glowing nbt to simulate potion effect duration.
 # Created by Galdeveer.
##

execute if score @s veer.fsh.glowTimer matches 0 run data remove entity @s Glowing
scoreboard players remove @s veer.fsh.glowTimer 1

# Leaves it at -1 when finished