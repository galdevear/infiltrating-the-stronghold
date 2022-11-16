##
 # detect.mcfunction
 # 
 #
 # Created by Galdeveer.
##

execute at @s positioned ~ ~ ~-0.1 if block ~ ~ ~ infested_chiseled_stone_bricks run setblock ~ ~ ~ air destroy
execute at @s positioned ~ ~ ~0.1 if block ~ ~ ~ infested_chiseled_stone_bricks run setblock ~ ~ ~ air destroy
execute at @s positioned ~ ~-0.1 ~ if block ~ ~ ~ infested_chiseled_stone_bricks run setblock ~ ~ ~ air destroy
execute at @s positioned ~ ~0.1 ~ if block ~ ~ ~ infested_chiseled_stone_bricks run setblock ~ ~ ~ air destroy
execute at @s positioned ~-0.1 ~ ~ if block ~ ~ ~ infested_chiseled_stone_bricks run setblock ~ ~ ~ air destroy
execute at @s positioned ~0.1 ~ ~ if block ~ ~ ~ infested_chiseled_stone_bricks run setblock ~ ~ ~ air destroy
