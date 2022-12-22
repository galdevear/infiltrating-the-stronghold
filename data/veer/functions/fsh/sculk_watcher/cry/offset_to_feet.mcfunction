##
 # Date: 12/22/22
 # Created by Galdeveer.
##

# Nonplayer
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/0_595] positioned ~ ~-0.595 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/0_68] positioned ~ ~-0.68 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/0_833] positioned ~ ~-0.833 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/0_85] positioned ~ ~-0.85 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/1_19] positioned ~ ~-1.19 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/1_7] positioned ~ ~-1.7 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/1_7775] positioned ~ ~-1.7775 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/2_295] positioned ~ ~-2.295 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/2_975] positioned ~ ~-2.975 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/6_8] positioned ~ ~-6.8 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=#veer:fsh/sculk_watcher/cry/targetable/small] positioned ~ ~-0.1 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1

# Player
# standing is 1.62
# crouching is 1.27
# crawling is 0.4
# flying is 0.4?
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=player,predicate=!veer:fsh/is_sneaking] positioned ~ ~-1.62 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=player,predicate=!veer:fsh/is_sneaking] positioned ~ ~-0.4 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if entity @s[type=player,predicate=veer:fsh/is_sneaking] positioned ~ ~-1.27 ~ if entity @s[distance=..0.25] run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1
