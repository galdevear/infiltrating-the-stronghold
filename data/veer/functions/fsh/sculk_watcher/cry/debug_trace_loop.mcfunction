##
 # debug_ray_trace_for_player.mcfunction
 # Dev utility. Not called in final shipment.
 #
 # Created by Galdeveer.
##



# Base base
execute positioned ~ ~-0.9 ~ if entity @e[type=player,distance=..1] run say found
particle crimson_spore ~1 ~ ~
particle crimson_spore ~-1 ~ ~
particle crimson_spore ~ ~ ~1
particle crimson_spore ~ ~ ~-1
execute if score $i veer.fsh.swc matches 10.. run say too far
execute if score $i veer.fsh.swc matches 7.. positioned ~ ~-0.9 ~ as @e[type=player,distance=..1,predicate=veer:fsh/is_stealthy,limit=1] run say found and stealthy
execute unless block ~ ~ ~ #veer:fsh/seethrough run say Not seethrough
execute if score $continue veer.fsh.swc matches 1 positioned ^ ^ ^1 run say loop
# particle campfire_signal_smoke ~ ~ ~