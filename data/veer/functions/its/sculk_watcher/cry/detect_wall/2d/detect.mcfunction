## ^lx ^ly ^lz

# clear scores
scoreboard players set $lxPos veer.its.sculk_watcher.cry 0
scoreboard players set $lxNeg veer.its.sculk_watcher.cry 0
scoreboard players set $lyPos veer.its.sculk_watcher.cry 0
scoreboard players set $lyNeg veer.its.sculk_watcher.cry 0

# get lx positive
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^0.707106781187 ^ ^ #veer:its/seethrough run scoreboard players set $lxPos veer.its.sculk_watcher.cry 1
# Debug lx positive
# execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 positioned ^0.707106781187 ^ ^ unless block ~ ~ ~ #veer:its/seethrough run particle flame ~ ~ ~ 0 0 0 0 1 force @a
# compare lx pos with old lx neg
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $lxPos veer.its.sculk_watcher.cry matches 1 if score $lxNegOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
# get lx negative
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^-0.707106781187 ^ ^ #veer:its/seethrough run scoreboard players set $lxNeg veer.its.sculk_watcher.cry 1
# Debug lx negative
# execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 positioned ^-0.707106781187 ^ ^ unless block ~ ~ ~ #veer:its/seethrough run particle flame ~ ~ ~ 0 0 0 0 1 force @a
# compare lx neg with old lx pos
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $lxNeg veer.its.sculk_watcher.cry matches 1 if score $lxPosOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
# compare lx positive and lx negative
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $lxPos veer.its.sculk_watcher.cry matches 1 if score $lxNeg veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1

# get ly pos
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^ ^0.707106781187 ^ #veer:its/seethrough run scoreboard players set $lyPos veer.its.sculk_watcher.cry 1
# debug ly pos
# execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 positioned ^ ^0.707106781187 ^ unless block ~ ~ ~ #veer:its/seethrough run particle flame ~ ~ ~ 0 0 0 0 1 force @a
# compare ly pos with old ly neg
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $lyPos veer.its.sculk_watcher.cry matches 1 if score $lyNegOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
# get ly neg
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^ ^-0.707106781187 ^ #veer:its/seethrough run scoreboard players set $lyNeg veer.its.sculk_watcher.cry 1
# debug ly neg
# execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 positioned ^ ^-0.707106781187 ^ unless block ~ ~ ~ #veer:its/seethrough run particle flame ~ ~ ~ 0 0 0 0 1 force @a
# compare ly neg with old ly pos
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $lyNeg veer.its.sculk_watcher.cry matches 1 if score $lyPosOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
# compare ly pos and ly neg
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $lyPos veer.its.sculk_watcher.cry matches 1 if score $lyNeg veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1

# set lx pos old
execute store result score $lxPosOld veer.its.sculk_watcher.cry run scoreboard players get $lxPos veer.its.sculk_watcher.cry 
# set lx neg old
execute store result score $lxNegOld veer.its.sculk_watcher.cry run scoreboard players get $lxNeg veer.its.sculk_watcher.cry
# set ly pos old
execute store result score $lyPosOld veer.its.sculk_watcher.cry run scoreboard players get $lyPos veer.its.sculk_watcher.cry
# set ly neg old
execute store result score $lyNegOld veer.its.sculk_watcher.cry run scoreboard players get $lyNeg veer.its.sculk_watcher.cry