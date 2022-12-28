## ^lx ^ly ^lz

# clear scores
scoreboard players set $lxPos veer.fsh.sculk_watcher.cry 0
scoreboard players set $lxNeg veer.fsh.sculk_watcher.cry 0
scoreboard players set $lyPos veer.fsh.sculk_watcher.cry 0
scoreboard players set $lyNeg veer.fsh.sculk_watcher.cry 0

# get lx positive
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^0.707106781187 ^ ^ #veer:fsh/seethrough run scoreboard players set $lxPos veer.fsh.sculk_watcher.cry 1
# Debug lx positive
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^0.707106781187 ^ ^ unless block ~ ~ ~ #veer:fsh/seethrough run particle flame ~ ~ ~ 0 0 0 0 1 force @a
# compare lx pos with old lx neg
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $lxPos veer.fsh.sculk_watcher.cry matches 1 if score $lxNegOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
# get lx negative
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^-0.707106781187 ^ ^ #veer:fsh/seethrough run scoreboard players set $lxNeg veer.fsh.sculk_watcher.cry 1
# Debug lx negative
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^-0.707106781187 ^ ^ unless block ~ ~ ~ #veer:fsh/seethrough run particle flame ~ ~ ~ 0 0 0 0 1 force @a
# compare lx neg with old lx pos
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $lxNeg veer.fsh.sculk_watcher.cry matches 1 if score $lxPosOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
# compare lx positive and lx negative
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $lxPos veer.fsh.sculk_watcher.cry matches 1 if score $lxNeg veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

# get ly pos
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^ ^0.707106781187 ^ #veer:fsh/seethrough run scoreboard players set $lyPos veer.fsh.sculk_watcher.cry 1
# debug ly pos
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^0.707106781187 ^ unless block ~ ~ ~ #veer:fsh/seethrough run particle flame ~ ~ ~ 0 0 0 0 1 force @a
# compare ly pos with old ly neg
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $lyPos veer.fsh.sculk_watcher.cry matches 1 if score $lyNegOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
# get ly neg
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^ ^-0.707106781187 ^ #veer:fsh/seethrough run scoreboard players set $lyNeg veer.fsh.sculk_watcher.cry 1
# debug ly neg
# execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^-0.707106781187 ^ unless block ~ ~ ~ #veer:fsh/seethrough run particle flame ~ ~ ~ 0 0 0 0 1 force @a
# compare ly neg with old ly pos
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $lyNeg veer.fsh.sculk_watcher.cry matches 1 if score $lyPosOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
# compare ly pos and ly neg
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $lyPos veer.fsh.sculk_watcher.cry matches 1 if score $lyNeg veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

# set lx pos old
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1..0 store result score $lxPosOld veer.fsh.sculk_watcher.cry run scoreboard players get $lxPos veer.fsh.sculk_watcher.cry 
# set lx neg old
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1..0 store result score $lxNegOld veer.fsh.sculk_watcher.cry run scoreboard players get $lxNeg veer.fsh.sculk_watcher.cry
# set ly pos old
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1..0 store result score $lyPosOld veer.fsh.sculk_watcher.cry run scoreboard players get $lyPos veer.fsh.sculk_watcher.cry
# set ly neg old
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1..0 store result score $lyNegOld veer.fsh.sculk_watcher.cry run scoreboard players get $lyNeg veer.fsh.sculk_watcher.cry