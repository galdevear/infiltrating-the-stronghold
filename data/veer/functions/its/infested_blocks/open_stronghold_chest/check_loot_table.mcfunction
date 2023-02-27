# hallway
execute if block ~ ~ ~ chest{LootTable:"minecraft:chests/stronghold_corridor"} run scoreboard players set $foundBlock veer.its.infested_blocks 1
# storeroom
execute if block ~ ~ ~ chest{LootTable:"minecraft:chests/stronghold_crossing"} run scoreboard players set $foundBlock veer.its.infested_blocks 2
# library
execute if block ~ ~ ~ chest{LootTable:"minecraft:chests/stronghold_library"} run scoreboard players set $foundBlock veer.its.infested_blocks 3