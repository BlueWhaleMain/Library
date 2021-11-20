# Library数据包编码规范

## 项目结构

根

- 数据包

    - data

        - library（默认）

            - advancements（进度）

                - install（建议，初始化触发进度）
                    - root.json（建议根进度名称）
                    - ...（其他进度）
                - recipes（配方书）
                    - root.json（建议根进度名称）
                    - ...（其他进度）
                - state（建议，表示状态的指示灯进度）
                    - root.json（建议根进度名称）
                    - ...（其他进度）
                - trigger（建议，触发事件的触发器进度）
                    - root.json（建议根进度名称）
                    - ...（其他进度）
                - ...（其他类型的进度）

            - functions（函数）

                - class（建议，类名，由main执行初始化）

                    - ...（嵌套functions的结构，不建议直接写函数）

                - interface（建议，接口分包，通常用来区分类的不同状态，由main直接调用）

                    - all（建议，公共执行分支）

                        - check.mcfunction（建议，游戏刻单位函数）
                        - tick.mcfunction（建议，红石刻单位函数）
                        - execution.mcfunction（建议，秒单位函数）
                        - statistics.mcfunction（建议，分钟单位函数）
                        - day.mcfunction（建议，游戏天单位函数）

                        - ...（任意mcfunction文件或目录，实现更复杂的调度）

                    - ...（其他状态，不建议直接写函数）

                - main（建议，入口函数，直接由json文件配置的函数）

                    - load.mcfunction（建议，直接调用的初始化函数）
                    - init.mcfunction（建议，需要时执行初始化的函数）
                    - 1t.mcfunction（建议，游戏刻单位调度）
                    - 1tick.mcfunction（建议，红石刻单位调度）
                    - 1s.mcfunction（建议，秒单位调度）
                    - 60s.mcfunction（建议，分钟单位调度）
                    - 1d.mcfunction（建议，游戏天单位调度）
                    - ...（任意mcfunction文件或目录，实现更多的调度入口点）

                - method（建议，基本函数，用来执行具体功能，建议由interface或shell直接调用）

                    - ...（任意mcfunction文件或目录，实现更多的功能）

                - shell（建议，命令函数，直接由管理员或命令方块执行的函数，不建议被函数调用，但可以被标签索引）

                    - ...（任意mcfunction文件或目录，实现更多的指令）

                - ...（其他函数或目录，不建议）

            - loot_tables（战利品表）

                - items（建议，自定义物品）
                - spawn（建议，自定义生成）
                - empty.json（建议，空标记）
                - ...（任意json文件或目录）

            - predicates（谓词）

                - ...（任意json文件或目录）

            - recipes（合成表）

                - ...（任意json文件）

            - structures（结构）

                - ...（任意nbt文件或目录）

            - tags（标签）

                - blocks（方块标签）
                    - ...（任意json文件或目录）
                - entity_types（实体标签）
                    - ...（任意json文件或目录）
                - fluids（流体标签）
                    - ...（任意json文件或目录）
                - functions（函数标签）
                    - ...（任意json文件或目录）
                - items（物品标签）
                    - ...（任意json文件或目录）
                - ...（尚未添加）

            - ...（尚未添加）

        - minecraft（覆盖）

        - ...（可选，命名空间无数量限制）

    - 声明文档（建议）

    - pack.mcmeta

    - pack.png（可选）

    - ...（其他附带文件）

- 资源包

    - assets
        - library（默认）
            - sounds.json（自定义音效）
            - ...（与原版结构相同）
        - minecraft（覆盖）
        - ...（可选，命名空间无数量限制）
    - 声明文档（建议）
    - pack.mcmeta
    - pack.png（可选）
    - ...（其他附带文件）

- Pack（打包目录）

    - Backup（手动备份文件）
    - history（自动打包历史）
    - Publish（发布目录）
    - ...（打包产物等）

- ...（其他文件，略）

## 特别注意

以下情况仅适用于前文描述的项目结构

loot,give指令存在吞物品的问题，需要使用进度触发的函数

进度触发的函数是可以在一个函数运行中穿插运行的， 可能导致共享变量被意外修改，针对这种情况， 应保存共享变量的旧值，计算保存完毕后，还原

进度可以在同一刻被反复触发，为避免函数反复执行，需要将重设进度的指令放在尾部

进度触发的函数会优先执行，这可以用来检测玩家达成进度的情况，如检测玩家使用的物品信息

没有展示字段的隐藏进度，在移除时可能会使客户端渲染线程警报：
`Told to remove advancement library:trigger/root but I don't know what that is`
（仅出现在客户端，可以忽略）

summon,kill指令属于异步指令，执行之后结果不会立即生效

杜绝一切可能会和多人游戏冲突的实现，以及严重影响性能的实现（如滥用盔甲架）

在1.17后，隐藏盔甲架推荐用marker实体代替，该实体仅存在于服务器端

任何资源名称统一使用lower case命名规则，计分板使用camel toe命名规则

execute注意main中选择器用as，interface中用at定位后method中无需使用as和at

不建议编写大量同种结果不同条件的指令序列，因为即便条件互斥，指令也会依次全部执行，降低性能

相同执行结果的语句合并条件时要谨慎，必要时使用谓词代替

不要随意使用custom_model_data标签，定义的值必须在资源包中声明过，详见资源包1.8.0.1版本更新内容

使用循环操作时要注意控制循环条件应位于函数外层，避免造成死循环

使用§r重置文字样式时，在物品名称栏等容器内，文字的默认样式可能不符合预期

## 使用注解

注解仅适用于使用项目中脚本构建的数据包

``` mcfunction
#@Debug
# "from file:..."
#@Debug say 1
# "1"
```

## ...

内容持续更新中...

### BlueWhaleMain

+ [GitHub](https://github.com/BlueWhaleMain)
+ [BiliBili](https://space.bilibili.com/336800070/#/)
+ [Outlook](mailto:bluewhalemain@outlook.com)
