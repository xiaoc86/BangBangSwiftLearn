//
//  StringAndCharacter.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-6-30.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

/*
字符串和字符测试类
注意1：字符串是值类型，与java不通

*/
class StringAndChararcter{

    /*
        测试空字符串方法
    */
    func printEmptyString()
    {
        var empstr1:String = "";
        var empstr2:String = String();
        
        if(empstr1.isEmpty)
        {
            println("empstr1:String = '' : empstr1 is empty");
        }
        
        if(empstr2.isEmpty)
        {
            println("empstr2:String = String() : empstr2 is empty");
        }
    }
    
    /*
        测试获取字符数量方法
    */
    func printCountElement()
    {
        var str:String = "Hello !!!";
        println("str length is \(countElements(str))");
        
        for char in str
        {
            println("--" + char + "--");
        }
        
    }
    
    /*
        测试字符串的前缀和后缀方法
    */
    func printPrefixAndSuffix()
    {
        var str:String = "hello my test string";
        
        var isprefix = str.hasPrefix("hello");
        var issiffix = str.hasSuffix("string");
        
        println("Is prefix : \(isprefix)");
        println("Is siffix : \(issiffix)");
        
    }
    
    /*
        字符串大小写转换
    */
    func printUpperAndLower()
    {
        var str:String = "hello my test string";
        println("original string : \(str)");
        
        var upper:String = str.uppercaseString;
        println("upper string : \(upper)")
        
        var lower:String = str.lowercaseString;
        println("lower string : \(lower)");
    }
    
    
}