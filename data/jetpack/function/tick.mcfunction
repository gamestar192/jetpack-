execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}}] if score @s sneak matches 1.. run effect give @s levitation 1 5 true
execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}}] if score @s sneak matches 0 run effect clear @s levitation
execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}}] at @s if block ~ ~-2 ~ air if block ~ ~-1 ~ air run effect give @s slow_falling 1 1 true
execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}}] at @s unless block ~ ~-2 ~ air run effect clear @s slow_falling
execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}}] at @s unless block ~ ~-1 ~ air run effect clear @s slow_falling
execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}}] at @s if score @s sneak matches 1.. run playsound entity.horse.breathe master
execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}}] at @s if score @s sneak matches 1.. run particle flame ~ ~-.5 ~ .06 0 .06 .02 50
execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}}] at @s if score @s sneak matches 1.. run particle soul_fire_flame ~ ~-.1 ~ .07 0 .07 0 15
execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}}] at @s if score @s sneak matches 0 if block ~ ~-2 ~ air if block ~ ~-1 ~ air run particle smoke ~ ~-.2 ~ .05 0 .05 .01 10
execute as @a[nbt={equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}},tag=!jp] run tag @s add jp
execute as @a[nbt=!{equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}},tag=jp] run effect clear @s slow_falling
execute as @a[nbt=!{equipment:{chest:{id:"minecraft:diamond_chestplate",components:{"minecraft:item_name":"jetpack"}}}},tag=jp] run tag @s remove jp
execute as @a if score @s sneak matches 1.. run scoreboard players set @s sneak 0