##
 # summon_shelled.mcfunction
 #
 # Created by .
##

# Offset to prevent the falling block entity from being placed (not a risk after the first tick of it being spawned)
#alias vector yOffset ~ ~0.01 ~

# lifetime counts to 2400 (endermite)
# life counts down to 0 (falling block)
# They would despawn together if this was used: Lifetime = 2400 - (-1 * Time); Time < 0
# When the falling block reaches zero, it can delete an infested block of the matching type if it is overlapping with it. Very unlikely.
# The endermite should despawn before the block, meaning it gets placed.
execute positioned ~ ~0.1 ~ run summon endermite ~ ~ ~ {Lifetime:770,Tags:["veer.fsh.hooked_shell","veer.fsh.entity"],Passengers:[{id:"minecraft:falling_block",Tags:["veer.fsh.hooked_shell","veer.fsh.entity","global.ignore"],BlockState:{Name:"minecraft:infested_chiseled_stone_bricks"},Time:-1600,DropItem:0b}], Attributes:[{Name:"generic.armor",Base:1},{Name:"generic.attack_damage",Base:4},{Name:"generic.attack_knockback",Base:0.05}]}

# The silverfish is killed because the shell gets placed when the endermite despawns meaning the number of silverfish balances out. 
execute if entity @s[type=silverfish] run function veer:fsh/util/kill_in_void