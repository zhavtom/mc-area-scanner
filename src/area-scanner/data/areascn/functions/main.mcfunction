scoreboard players remove @a[scores={areascn.timer=1..}] areascn.timer 1
scoreboard players operation @a[scores={areascn.timer=1..}] areascn.count = @p areascn.timer
scoreboard players operation @a[scores={areascn.timer=1..}] areascn.count /= @p const.tick
execute at @a[nbt={SelectedItem:{id:"minecraft:compass"}}, level=1.., scores={areascn.sneak=1..,areascn.timer=0}] run tag @p add scanning
execute at @a[tag=scanning] run effect give @e[distance=..100,type=#areascn:enemy] glowing 5 1
experience add @a[tag=scanning] -10
scoreboard players set @a[tag=scanning] areascn.timer 319
scoreboard players set @a[scores={areascn.sneak=1..}] areascn.sneak 0
tag @a[tag=scanning,scores={areascn.sneak=0,areascn.timer=1..}] remove scanning
title @a[nbt={SelectedItem:{id:"minecraft:compass"}},scores={areascn.timer=1..}] actionbar ["",{"text":"スキャン可能まで "},{"score":{"name":"@p","objective":"areascn.count"}},{"text":" 秒"}]