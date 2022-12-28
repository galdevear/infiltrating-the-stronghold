##
 # hooked_shell-a.mcfunction
 #
 # Created by Galdeveer.
##

summon falling_block ~ ~ ~ {Time:-500, Motion:[0.0,0.4,0.0], BlockState:{Name:"infested_chiseled_stone_bricks"}}
kill @s
scoreboard players set $foundShell veer.its.hooked_shell 1