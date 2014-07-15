//
//  DictionaryLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-1.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class DictionaryLearn
{
    //注意：6.0bet3可以使用 var airports:[String,String] = ["keyone":"valueone","keytwo":"valuetwo","keythree":"valuethree"]; 键必须是可Hash的
    var airports:Dictionary<String,String> = ["keyone":"valueone","keytwo":"valuetwo","keythree":"valuethree"];
    //可以省略类型 var airports = ["TYO": "Tokyo", "DUB": "Dublin"]
    
    func printDictionaryLearn()
    {
        //字典长度
        println("The Dictionary of airports contains \(airports.count) items");
        
        //修改字典内容
        airports["keyone"] = "Haha";
        println("The airports items: \(airports) ");
        
        //更新yuansu方法
        airports.updateValue("Hehe",forKey:"keytwo");
        println("The airports items: \(airports) ");
        
        //删除元素方法
        airports.removeValueForKey("keytwo");
        println("The airports items: \(airports) ");
        
        //遍历字典类型
        for (key,value) in  airports
        {
            println("~~~~key is \(key) ,vaule is \(value)");
        }
        
        //遍历keys Array(airports.keys)可以转换成数组
        for key in airports.keys
        {
            println("++++key is \(key)");
        }
        
        //遍历values Array(airports.values)可以转换成数组
        for value in airports.values
        {
            println("----value is \(value)");
        }
        
        //测试字典的不可变性
        let letdic = ["A":"a","B":"b","C":"c","D":"d"];
        
        //长度还是不可变
        //letdic["E"] = "e";
        
        //字典的指定key的value是不可变滴，要注意啦。
        //letdic["A"] = "aa";
    
    }

}