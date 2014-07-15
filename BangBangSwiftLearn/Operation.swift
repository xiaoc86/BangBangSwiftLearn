//
//  Operation.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-6-30.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

/**
用于运算符测试
*/
class Operation{

/*
    数值运算、赋值运算、比较运算、复合运算、单目运算、三目运算、逻辑运算与其他语言一直。
*/
    
    
    func printIntervalOperation()
    {
        for no in 2...5  // for (var i:int = 2; i<=5;i++)
        {
            println("closed interval operation \(no)");
        }
        
        for no2 in 2..<5
        {
            println("half interval operation \(no2)");
        }
        
    }
    
    
    

}