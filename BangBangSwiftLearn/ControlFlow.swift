//
//  ControlFlow.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-1.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

/*
控制流转
- continue
- break
- fallthrough
- return
用法与as、java语言一致，不做解释

6.0bet3 1 ..< 5表示1,2,3,4。1 … 5表示1,2,3,4,5
*/
class ControlFlow
{
    /*
        for循环
    */
    func printFor()
    {
        //for in
        for item in ["A","B","C"]
        {
            print("\(item) ");
        }
        println();
        
        //base for
        for var i=0;i<10;i++ {
            print("\(i) ");
        }
        println();
    }
    
    /*
        while循环
    */
    func printWhile()
    {
        var i = 0;
        let count = 10;
        //while
        while i < count
        {
            print("\(i) ");
            i++;
        }
        println();
        
        var j = 0;
        //do while
        do{
            print("\(j) ");
            j++;
        }while j<count
        println();
    
    }
    
    /*
        if控制
    */
    func printIf()
    {
        let a=1 , b=2;
        if a < b//nil
        {
            println("a > b");
        }else if a == b{
            println("a = b")
        }else{
            println("a < b")
        }
        
    }
    
    
    /*
        switch控制
    */
    func printSwitch()
    {
        let char = "a";
        
        //注意：1、不需要使用break，会自动终止
        //     2、每个case必须包含至少一条语句
        //     3、使用 fallthrough 可以实现贯穿
        
        switch char{
            
            case "A":
                println("score 90");
                fallthrough;
            case "a":
                println("score 90");
            case "B","b":
                println("score 80");
            case "C","c":
                println("score 70");
            case "D","d":
                println("score 60");
            default:
                println("no pass");
        }
        
        
        let score = 70;
        //范围选择
        switch score{
            case 90...100:
                println("score A");
            case 80...90:
                println("score B");
            case 70...80:
                println("score C");
            case 60...70:
                println("score D");
            default:
                println("no pass");
        }
        
        
        //元组控制
        //注意 _使用
        let point = (1,0)
        switch point{
            case (0,0):
                println("origin point");
            case (_,0):
                println("x-asix point");
            case (0,_):
                println("y-axis point");
            default :
                println("other point");
        
        }
        
        let point2 = (0,2);
        //值绑定
        switch point2{
            case (0,0):
                println("origin point");
            case (let x,0):
                println("x-asix point , x is \(x)");
            case (0,let y):
                println("y-axis point , y is \(y)");
            case let(x,y) :
                println("other point , x is \(x) and y is \(y)");
            
        }
        
        
        let point3 = (2,-2);
        //where 附件条件
        switch point3{
        case (0,0):
            println("origin point");
        case let(x,y) where x == y:
            println("fun y = x , x,y is \(x)");
        case let(x,y) where x == -y:
            println("fun y=-x , x is \(x)");
        case let(x,y) :
            println("other point , x is \(x) and y is \(y)");
            
        }
        
    }
    
    
    
    
    
    
}