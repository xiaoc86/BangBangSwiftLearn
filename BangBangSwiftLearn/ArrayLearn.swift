//
//  ArrayLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-1.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class ArrayLearn
{
    //注意 ： 6.0bet3 建议携程var shoppingList: [String] = ["Eggs", "Milk"]; 原始报警
    var shoppingList: [String] = ["Eggs", "Milk"];//可以省略类型 var shoppingList = ["Eggs", "Milk"];
    
    func pringArrayLearn()
    {
        //数组长度
        println("The shopping list contains \(shoppingList.count) items.");
    
        //判断是否为空集合，注意：为count=0
        println("The shopping list isempty: \(shoppingList.isEmpty) ");
        
        //向集合中添加新元素
        shoppingList.append("Flour");
        println("The shopping list items: \(shoppingList)");
        
        shoppingList += "Baking Powder";
        println("The shopping list items: \(shoppingList)");

        shoppingList += ["Chocolate Spread", "Cheese", "Butter"];
        println("The shopping list items: \(shoppingList)");
        
        //集合修改内容
        shoppingList[0] = "One Egg";
        println("The shopping list items: \(shoppingList)");
        
        shoppingList[2...5] = ["Apple","Bananas"];//思考：如果是2..5结果是什么呢。。不知道？！小样儿，前面没注意听吧。
        println("The shopping list items: \(shoppingList)");
        
        //插入数据方法
        shoppingList.insert("Orange", atIndex:0);
        println("The shopping list items: \(shoppingList)");
        
        //移除数据方法
        shoppingList.removeAtIndex(0);
        println("The shopping list items: \(shoppingList)");
        
        //遍历数组
        for item in shoppingList
        {
            println(item);
        }
        
        //测试数组的不可变性
        let letarray = ["A","B"];
        
        //6.0可以内容改变木有问题
        //letarray[0] = "a";
       
        //长度发生改变会报错的哟
        //letarray += "C";
        println(letarray);
        
    }
}