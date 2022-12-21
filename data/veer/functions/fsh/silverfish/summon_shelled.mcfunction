##
 # summon_shelled.mcfunction
 #
 # Created by .
##

# Offset to prevent the falling block entity from being placed (not a risk after the first tick of it being spawned)
#alias vector yOffset ~ ~0.01 ~

# lifetime counts to 2400
# life counts down to 0
# They would despawn together if this was used: Lifetime = 2400 - (-1 * Time); Time < 0
# Current time: 1400 ticks 
# When it reaches zero, it can delete an infested block of the matching type if the falling block is overlapping with it. Very unlikely. Probably more fun not to fix.
# The endermite should despawn before the block, meaning it gets placed. This is why the silverfish is killed. It is essentially the silverfish in the infested block.
execute positioned ~ ~0.1 ~ run summon endermite ~ ~ ~ {Lifetime:770,Tags:["veer.fsh.hooked_shell","veer.fsh"],Passengers:[{id:"minecraft:falling_block",Tags:["veer.fsh.hooked_shell","veer.fsh","global.ignore"],BlockState:{Name:"minecraft:infested_chiseled_stone_bricks"},Time:-1600,DropItem:0b}], Attributes:[{Name:"generic.armor",Base:1},{Name:"generic.attack_damage",Base:4},{Name:"generic.attack_knockback",Base:0.05}]}

execute if entity @s[type=!player] run function veer:fsh/util/kill_in_void