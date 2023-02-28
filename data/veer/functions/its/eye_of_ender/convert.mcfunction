# Runs 4 times per eye of ender
# 0.02 + (0.02 *0.98) + (0.02 * 0.98 * 0.98) + (0.02 * 0.98 * 0.98 * 0.98) = 0.077
execute if entity @s[type=eye_of_ender] if predicate veer:its/eye_of_ender/transformation/convert_chance at @s run function veer:its/eye_of_ender/pick_type