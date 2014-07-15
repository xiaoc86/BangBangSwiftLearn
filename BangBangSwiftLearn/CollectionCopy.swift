//
//  CollectionCopy.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-3.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//Swift中得数组和字典是通过结构体实现的
class CollectionCopy
{
    func printCollectionCopy()
    {
        printDictionary();
        printArray();
    }
    
    //字典中，如果是值类型赋值是位拷贝，如果为引用类型则拷贝的引用。
    func printDictionary()
    {
        var dic = ["A":"a","B":"b","C":"c","D":"d"];
        var dic2 = dic;
        dic2["A"] = "aa";
        
        var dicA = dic["A"];
        var dic2A = dic2["A"];
        
        println("dic A :\(dicA) ,dic2 A: \(dic2A)");
    }
    //重要变化，6.3直接复制
    //拷贝行为仅仅当操作有可能修改数组长度时才会发生。这种行为包括了附加
    //(appending),插入(inserting),删除(removing)或者使用范围下标(ranged subscript)去替换这
    //一范围内的元素
    func printArray()
    {
        var a = [1,2,3]
        var b = a ;
        var c = b;
        println("a:\(a)");
        println("b:\(b)");
        println("c:\(c)");
        
        b[0] = 10;
        b[1] = 20;
        b[2] = 30;
        println("a:\(a)");
        println("b:\(b)");
        println("c:\(c)");
        
        a.append(4);
        a[0] = 100;
        println("a:\(a)");
        println("b:\(b)");
        println("c:\(c)");
        
        //6.3不在使用
//        b.unshare();
//        b[0] = 20;
//        println("a:\(a)");
//        println("b:\(b)");
//        println("c:\(c)");

//        var d = c;
//        d.append(4);
//        if d == c
//        {
//            println("使用===判断元素是否相同 true");
//        }else{
//            println("使用===判断元素是否相同 false");
//        }
        //6.3不在使用
//        var e = c.copy();
//        e[0] = 50;
//        println("c:\(c)");
//        println("e:\(e)");
        
    }

}