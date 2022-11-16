##
 # summon_battlecryer-1.mcfunction
 # Version 1
 # Use invisible silverfish as technical entity to trigger nearby infested blocks. Also can result in infestation.
 # Created by Galdeveer.
##

# initialize Entity onto scoreboard
scoreboard players set @s veer.fsh.ssb.ay 0
scoreboard players set @s veerFsh.sbTimer 0
# Store actual Y position (from base entity) onto scoreboard (returns to the point after a tick in the void)
execute store result score @s veer.fsh.ssb.ay run data get storage veer.fsh.sf.summon_battlecryer yPos 1
execute if block ~ ~-2 ~ bubble_column run scoreboard players add @s veer.fsh.ssb.ay 2
# Untag summon entity as new
tag @s remove veer.fsh.silverfish.battlecryer.new