##
 # end_glowing.mcfunction
 #
 # Created by Galdeveer.
##

execute if score @s veer.fsh.gloTimer matches -1 run data modify entity @s Glowing set value 0b
scoreboard players remove @s veer.fsh.gloTimer 1