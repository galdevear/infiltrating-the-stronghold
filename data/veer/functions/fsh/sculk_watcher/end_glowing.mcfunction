##
 # fix_glowing.mcfunction
 # Version 1
 #
 # Created by Galdeveer.
##

execute if score @s veerFsh.gloTimer matches -1 run data remove entity @s Glowing
scoreboard players remove @s veerFsh.gloTimer 1