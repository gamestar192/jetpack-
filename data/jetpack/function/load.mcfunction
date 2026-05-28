scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
tellraw @a {text:"Use '/function jetpack:info' To Learn How To Use.",color:"aqua",bold:true}
execute as @a at @s run playsound entity.experience_orb.pickup player @s