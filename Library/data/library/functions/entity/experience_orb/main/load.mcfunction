#(c) Copyright by BlueWhale. All Rights Reserved.
say loading experience_orb...
##执行
scoreboard players set #LibExperienceOrb libScoreCheck 0
execute if score #LibExperienceOrb libTemp matches 0.. run scoreboard players set #LibExperienceOrb libScoreCheck 1
execute if score #LibExperienceOrb libTemp matches ..-1 run scoreboard players set #LibExperienceOrb libScoreCheck 1
execute if score #LibExperienceOrb libScoreCheck matches 0 run function library:entity/experience_orb/main/init
execute unless score #LibExperienceOrb libTemp matches 1 run function library:entity/experience_orb/main/init
#