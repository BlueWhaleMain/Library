#Copyright by BlueWhale. All Rights Reserved.
summon minecraft:arrow ^ ^2 ^ {Motion:[0.0d,0.0d,0.0d],NoGravity:true,pickup:2b,damage:6.0d,CustomPotionEffects:[{Id:19b,Amplifier:5,Duration:10}],Tags:["library_shoot","target_player","hostile","weak","acid"]}
execute if predicate library:random/50 run tag @s add crazy
