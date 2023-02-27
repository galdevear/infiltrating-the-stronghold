advancement revoke @s only veer:its/infested_blocks/fall_on_cracked
# Run on the 2x2 under the player
execute positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ infested_cracked_stone_bricks run setblock ~ ~ ~ air destroy
execute positioned ~0.5 ~-1 ~-0.5 if block ~ ~ ~ infested_cracked_stone_bricks run setblock ~ ~ ~ air destroy
execute positioned ~-0.5 ~-1 ~0.5 if block ~ ~ ~ infested_cracked_stone_bricks run setblock ~ ~ ~ air destroy
execute positioned ~-0.5 ~-1 ~-0.5 if block ~ ~ ~ infested_cracked_stone_bricks run setblock ~ ~ ~ air destroy