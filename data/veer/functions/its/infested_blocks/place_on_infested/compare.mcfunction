# Efficient way of checking if it wasn't using infested, but the block was interacted with
execute if entity @s[advancements={veer:its/infested_blocks/place_on_infested/with_infested=false}] run function veer:its/infested_blocks/place_on_infested/start

advancement revoke @s only veer:its/infested_blocks/place_on_infested/with_infested
advancement revoke @s only veer:its/infested_blocks/place_on_infested/without_infested