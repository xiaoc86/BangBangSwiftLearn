//
//  CloseuresLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-2.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

/*
学习闭包
*/
class CloseuresLearn
{
    func printCloseures()
    {
        var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
        //使用函数方法
        println("list is \(names)");
        println("sort rsult: \(sorted(names,compareFunc))");
        
        
        
        //使用闭包方法
        names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
        println("list is \(names)");
        var result1 = sorted(names,{
            (str1:String,str2:String) -> Bool in
            return str1 < str2;
            });
        println("sort result1: \(result1)");
        
        //闭包参数类型推断，进行简化
        names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
        println("list is \(names)");
        var result2 = sorted(names,{
            s1,s2 in return s1 < s2
            })
        println("sort result2: \(result2)");
        
        //单行表达式可以忽略return
        names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
        println("list is \(names)");
        var result3 = sorted(names,{s1,s2 in s1 < s2})
        println("sort result3: \(result3)");
        
        //使用$0,$1进行参数名简写
        names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
        println("list is \(names)");
        var result4 = sorted(names,{$0 < $1});
        println("sort result4: \(result4)");
    

        //运算符函数
        names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
        println("list is \(names)");
        var result5 = sorted(names,<);
        println("sort result5: \(result5)");
    
    }
    
    func compareFunc(a:String,b:String)->Bool
    {
        return a < b;
    }

}