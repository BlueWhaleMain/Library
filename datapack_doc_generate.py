# -*- coding: utf-8 -*-
# Copyright by BlueWhale. All Rights Reserved.
"""
生成数据包文档
"""
import getopt
import hashlib
import json
import os.path
import sys
import time

from configobj import ConfigObj

from util import time_escape, get_file_as_type

config = ConfigObj("Minecraft.conf", encoding="UTF-8")

ver = ""
lang = ""
out_file_path = ""
namespace_path = config[".minecraft"]["InstallDirectory"]
resources_path = ""


def find_minecraft_lang() -> dict:
    """
    寻找原版语言文件
    :return: 语言文件路径
    """
    index_data = json.load(open(os.path.join(namespace_path, "assets/indexes", ver + ".json")))["objects"]
    return index_data[f"minecraft/lang/{lang}.json"]


def get_object_filename_from_hash(hash_value: str) -> str:
    """
    根据Hash得到Object文件路径
    :param hash_value:
    :return:
    """
    return f"{namespace_path}/assets/objects/{hash_value[:2]}/{hash_value}"


def read_object_file(file_data: dict) -> bytes:
    """
    读取Object文件
    :param file_data: 文件信息
    :return: 文件内容
    """
    filename = get_object_filename_from_hash(file_data["hash"])
    if os.path.getsize(filename) == file_data["size"]:
        with open(filename, "rb") as f:
            _data = f.read()
            h = hashlib.sha1()
            h.update(_data)
            if h.hexdigest() == file_data["hash"]:
                return _data


def load_json_file(data_: bytes) -> dict:
    """
    读取json文件
    :param data_: json文件内容
    :return: 反序列化的字典对象
    """
    return json.loads(data_.decode(encoding="UTF-8"))


def get_translate_str(type_name: str, namespace_: str, name: str) -> str:
    """
    规范得到翻译序列
    :param type_name: 类型
    :param namespace_: 命名空间
    :param name: 名称
    :return: 翻译序列
    """
    return f"{type_name}.{namespace_}.{name}"


def try_translate(lang_data: dict, key: str) -> str:
    """
    尝试翻译文本
    :param lang_data: 语言文件数据
    :param key: 翻译序列
    :return: 翻译文本
    """
    if key in lang_data:
        return lang_data[key]
    if key.startswith("item"):
        _key = f"block{key[4:]}"
        value = try_translate(lang_data, _key)
        if _key != value:
            return value
    return key


def get_type_directory_name(type_: str) -> str:
    """
    获取可用的文件夹名称
    :param type_: 类型
    :return: 名称
    """
    types = type_.split(":")
    if types[0] == "minecraft":
        if types[1] == "loot_table":
            return "loot_tables"


def get_name_path(root_path: str, type_directory_name: str, name: str) -> str:
    """
    获取数据包文件规范路径
    :param root_path: 根目录
    :param type_directory_name: 类型文件夹名称
    :param name: 名称
    :return: 路径
    """
    names = name.split(":")
    return f"{root_path}/data/{names[0]}/{type_directory_name}/{names[1]}"


def condition_to_str(condition_data: dict) -> str:
    """
    条件转文本
    :param condition_data: 条件数据
    :return: 文本
    """
    result = ""
    condition_name = condition_data["condition"]
    if condition_name == "minecraft:random_chance":
        result += f"随机：{condition_data['chance'] * 100}%\n"
    elif condition_name == "minecraft:killed_by_player":
        result += "被玩家或驯服的狼杀死\n"
    elif condition_name == "minecraft:location_check":
        result += "检查当前位置：\n" + predicate_to_str(condition_data['predicate']) + "\n"
    elif condition_name == "minecraft:alternative":
        if "terms" in condition_data:
            results = []
            for c in condition_data["terms"]:
                results.append(condition_to_str(c))
            result += "\n或".join(results)
    elif condition_name == "minecraft:match_tool":
        result += "匹配工具：" + predicate_to_str(condition_data['predicate']) + "\n"
    elif condition_name == "minecraft:entity_properties":
        if "entity" in condition_data:
            if condition_data["entity"] == "this":
                result += "实体自身：\n"
        if "predicate" in condition_data:
            result += predicate_to_str(condition_data["predicate"]) + "\n"
    elif condition_name == "minecraft:random_chance_with_looting":
        result += "抢夺增加几率：\n"
        if "chance" in condition_data:
            result += f"{condition_data['chance'] * 100}%\n"
        if "looting_multiplier" in condition_data:
            result += f"+{condition_data['looting_multiplier'] * 100}%\n"
    else:
        result += f"（未知的条件类型：{condition_name}）\n"
    return result


def predicate_to_str(predicate: dict) -> str:
    """
    谓词转文本
    :param predicate: 谓词数据
    :return: 文本
    """
    result = ""
    if "block" in predicate:
        result += "检查方块\n"
        block = predicate["block"]
        if "nbt" in block:
            result += f"检查nbt：{block['nbt']}\n"
    elif "item" in predicate:
        result += "检查物品：" + try_translate(minecraft_lang, get_translate_str("item",
                                                                            predicate["item"].split(':')[0],
                                                                            predicate["item"].split(':')[-1:][
                                                                                0])) + "\n"
    elif "enchantments" in predicate:
        result += "检查附魔\n"
        enchantments = predicate["enchantments"]
        for enchantment in enchantments:
            result += enchantment_to_str(enchantment) + "\n"
    elif "nbt" in predicate:
        result += f"检查nbt：{predicate['nbt']}\n"
    elif "flags" in predicate:
        flags = predicate["flags"]
        if "is_on_fire" in flags:
            if flags["is_on_fire"]:
                result += "着火\n"
            else:
                result += "没有着火\n"
    elif "biome" in predicate:
        result += "检查生物群系：" + try_translate(minecraft_lang, get_translate_str("biome",
                                                                              predicate["biome"].split(':')[0],
                                                                              predicate["biome"].split(':')[-1:][
                                                                                  0])) + "\n"
    else:
        result += f"（未知的谓词：{predicate}）\n"
    return result


def enchantment_to_str(enchantment: dict) -> str:
    """
    附魔数据转文本
    :param enchantment: 附魔数据
    :return: 文本
    """
    result = try_translate(minecraft_lang, get_translate_str("enchantment", enchantment["enchantment"].split(':')[0],
                                                             enchantment["enchantment"].split(':')[-1:][0]))
    if "levels" in enchantment:
        result += "等级：" + count_to_str(enchantment["levels"]) + "\n"
    return result


def entries_to_str(entries_data: dict) -> str:
    """
    实体信息转文本
    :param entries_data: 实体信息
    :return: 文本
    """
    result = ""
    entries_type = entries_data["type"]
    if entries_type == "minecraft:loot_table":
        entries_name = entries_data["name"]
        result += "战利品表（套娃）：" + entries_name + "\n"
    elif entries_type == "minecraft:item":
        entries_name = entries_data["name"]
        result += "物品：" + try_translate(minecraft_lang, get_translate_str(entries_type.split(':')[-1:][0],
                                                                          entries_name.split(':')[0],
                                                                          entries_name.split(':')[-1:][0])) + "\n"
    elif entries_type == "minecraft:alternatives":
        if "children" in entries_data:
            results = []
            for c in entries_data["children"]:
                results.append(entries_to_str(c))
            result += "\n" + "\n或".join(results)
    elif entries_type == "minecraft:dynamic":
        result += "方块特定掉落物（省略）\n"
    elif entries_type == "minecraft:empty":
        result += "空\n"
    else:
        result += f"（未知的类型：{entries_type}）\n"
    if "conditions" in entries_data:
        if isinstance(entries_data["conditions"], list):
            for c in entries_data["conditions"]:
                result += condition_to_str(c) + "\n"
        else:
            result += condition_to_str(entries_data["conditions"]) + "\n"
    if "functions" in entries_data:
        functions = entries_data["functions"]
        for function in functions:
            result += function_to_str(function) + "\n"
    if "weight" in entries_data:
        result += f"权重：{entries_data['weight']}\n"
    return result


def function_to_str(function_data: dict) -> str:
    """
    内置函数转文本
    :param function_data: 函数数据
    :return: 文本
    """
    result = ""
    function = function_data.pop("function")
    if function == "minecraft:set_count":
        result += "设置数量：" + count_to_str(function_data["count"]) + "\n"
    elif function == "minecraft:set_damage":
        result += "设置耐久度：" + count_to_str(function_data["damage"]) + "\n"
    elif function == "minecraft:furnace_smelt":
        result += "熔炉烧炼\n"
    elif function == "minecraft:set_nbt":
        result += "设置nbt：" + function_data["tag"] + "\n"
    elif function == "minecraft:set_name":
        result += "设置名称：" + json.dumps(function_data) + "\n"
    elif function == "minecraft:set_lore":
        result += "设置Lore：" + json.dumps(function_data) + "\n"
    elif function == "minecraft:set_attributes":
        result += "设置属性：" + json.dumps(function_data) + "\n"
    elif function == "minecraft:set_contents":
        result += "设置内容物：" + json.dumps(function_data) + "\n"
    elif function == "minecraft:copy_name":
        result += "复制名称：" + json.dumps(function_data) + "\n"
    elif function == "minecraft:copy_nbt":
        result += "复制nbt：" + json.dumps(function_data) + "\n"
    elif function == "minecraft:enchant_randomly":
        result += "随机附魔：" + json.dumps(function_data) + "\n"
    elif function == "minecraft:enchant_with_levels":
        result += "附魔等级：" + count_to_str(function_data["levels"]) + "\n"
        if "treasure" in function_data:
            result += f"{'' if function_data['treasure'] else '不'}包含宝藏类型附魔\n"
    elif function == "minecraft:looting_enchant":
        result += "抢夺数量：" + count_to_str(function_data["count"]) + "\n"
        if "limit" in function_data:
            result += f"（最多{function_data['limit']}）\n"
    else:
        result += f"（未知的函数：{function}）\n"
    if "conditions" in function_data:
        if isinstance(function_data["conditions"], list):
            for c in function_data["conditions"]:
                result += condition_to_str(c) + "\n"
        else:
            result += condition_to_str(function_data["conditions"])
    return result


def count_to_str(count_obj) -> str:
    """
    数量对象转文本
    :param count_obj: 数量对象
    :return: 文本
    """
    if not isinstance(count_obj, dict):
        return str(count_obj)
    if "type" in count_obj:
        count_type = count_obj["type"]
        if count_type == "minecraft:uniform":
            return f"均匀分布：{count_obj['min']}到{count_obj['max']}\n"
    result = ""
    if "min" in count_obj:
        result += f"最小值：{count_obj['min']}\n"
    if "max" in count_obj:
        result += f"最大值：{count_obj['max']}\n"
    return result


if __name__ == '__main__':
    err_msg = 'datapack_doc_generate.py -i <input_path> -t <type> -v <assets_json_ver> -o <out_file_path> -l <lang>' \
              ' -n <namespace_path> -r <resources_path>'
    file_list = []
    argv = sys.argv[1:]
    input_path = ''
    _type = ''
    try:
        opts, args = getopt.getopt(argv, "hi:t:v:o:l:n:r:",
                                   ["input_path=", "type=", "assets_json_ver=", "out_file_path=", "lang=",
                                    "namespace_path=", "resources_path="])
        if len(argv) < 4:
            print(err_msg)
            sys.exit(2)
    except getopt.GetoptError as e:
        print(e)
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print(err_msg)
            sys.exit()
        elif opt in ("-i", "--input_path"):
            if arg == "":
                print("目标路径不能为空！")
                sys.exit(2)
            input_path = arg
        elif opt in ("-t", "--type"):
            if arg == "":
                print("操作类型不能为空！")
                sys.exit(2)
            _type = arg
        elif opt in ("-v", "--assets_json_ver"):
            if arg == "":
                print("资源版本号不能为空！")
                sys.exit(2)
            ver = arg
        elif opt in ("-o", "--out_file_path"):
            if arg == "":
                print("文件输出路径不能为空！")
                sys.exit(2)
            out_file_path = arg
        elif opt in ("-l", "--lang"):
            if arg == "":
                print("语言不能为空！")
                sys.exit(2)
            lang = arg
        elif opt in ("-n", "--namespace_path"):
            if arg != "":
                namespace_path = arg
        elif opt in ("-r", "--resources_path"):
            if arg != "":
                resources_path = arg
    before = time.time()
    print("读取语言文件...")
    minecraft_lang = load_json_file(read_object_file(find_minecraft_lang()))
    print(f"{minecraft_lang['language.name']} {minecraft_lang['language.region']}")
    if _type == "loot_tables":
        with open(out_file_path, 'w', encoding="utf-8") as out:
            print("生成战利品表文档...")
            out.write("# 战利品表")
            result_count = 0
            namespaces = os.listdir(f"{input_path}/data")
            for namespace in namespaces:
                out.write(f"\n## {namespace}")
                loot_tables = []
                get_file_as_type(f"{input_path}/data/{namespace}/loot_tables", loot_tables, ".json")
                file_list += loot_tables
                for loot_table in loot_tables:
                    out.write("\n")
                    data = json.load(open(loot_table, encoding="utf-8"))
                    if "type" in data:
                        n = try_translate(minecraft_lang, get_translate_str(data['type'].split(':')[-1:][0], namespace,
                                                                            os.path.split(loot_table)[1].split('.')[0]))
                    else:
                        n = get_translate_str("loot_tables", namespace, os.path.split(loot_table)[1].split('.')[0])
                    out.write(f"\n### {n}")
                    if "pools" in data:
                        pools = data["pools"]
                        for pool in pools:
                            out.write("\n\n")
                            if "entries" in pool:
                                out.write("实体列表：\n")
                                entries_list = pool["entries"]
                                for entries in entries_list:
                                    out.write(entries_to_str(entries) + "\n")
                            if "conditions" in pool:
                                out.write("条件列表：\n")
                                conditions = pool["conditions"]
                                for condition in conditions:
                                    out.write(condition_to_str(condition) + "\n")
                            if "rolls" in pool:
                                out.write(f"抽取：{count_to_str(pool['rolls'])}次\n")
                    result_count += 1
    else:
        print("未知的操作：" + _type)
        sys.exit(2)
    print("处理了：", result_count, "个文件", "共", len(file_list), "个文件", "耗时：", time_escape(time.time() - before))
