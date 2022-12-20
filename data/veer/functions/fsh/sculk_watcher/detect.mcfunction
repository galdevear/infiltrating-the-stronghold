##
 # detect.mcfunction
 # 
 # Created by Galdeveer.
##

#>Ray trace for player
# Returns seesEntity
execute at @s positioned ~ ~0.2 ~ run function veer:fsh/sculk_watcher/cry/look_for_entity

# Makes sure there's a cooldown between battlecrys and the sculk watcher must see you multiple times consecutitvely in order to trigger.

# Increment till 7
execute if score @s veer.fsh.swTears matches ..7 run scoreboard players add @s veer.fsh.swTears 1
# If cooldown..max then tears = 0
execute if score @s veer.fsh.swTears matches 2..6 if score $seesEntity veer.fsh.swc matches 1 run scoreboard players set @s veer.fsh.swTears 0
# If after max then tears = -2
execute if score @s veer.fsh.swTears matches 7.. if score $seesEntity veer.fsh.swc matches 1 run scoreboard players set @s veer.fsh.swTears -2
# If cry = -1 unless seesEntity then tears = an out of bounds number
execute if score @s veer.fsh.swTears matches -1 unless score $seesEntity veer.fsh.swc matches 1 run scoreboard players add @s veer.fsh.swTears 7
# if tears = -1 then tears = 0
execute if score @s veer.fsh.swTears matches -1 if score $seesEntity veer.fsh.swc matches 1 run scoreboard players set @s veer.fsh.swTears 0

# If tears 0
# then summon_battlecryer!!!!
execute if score @s veer.fsh.swTears matches 0 run function veer:fsh/silverfish/summon_battlecryer