//
//  TrailingCloseures.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-2.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

/*
如果您需要将一个很长的闭包表达式作为最后一个参数传递给函数，可以使用 trailing 闭包
来增强函数的可读性。
Trailing 闭包是一个书写在函数括号之外(之后)的闭包表达式，函数支持将其作为最后一个
参数调用。
*/
class TrailingCloseures
{
    let mapNames = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
                    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"];
    
    let numbers = [123,456,789]
    
    func printTrailingCloseures()
    {
        var numbersstr = numbers.map(){
            (var number)-> String in
            
            var result:String = "";
            while number > 0
            {
                result = self.mapNames[number % 10]! + result ;
                number = number / 10;
            }
            return result;
        }
        
        println("rsult is \(numbersstr)");
    }
    
}