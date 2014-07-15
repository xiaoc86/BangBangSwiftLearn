//
//  TypeSafe.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-6-30.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

/*
类型及类型安全测试程序
*/
class TypeSafe{

    /*
    整数
    Swift 提供了8，16，32，64位有符号和无符号类型整数。
    Int 32位平台上是Int32   64位平台上是Int64
    */
    let minValue = UInt8.min;
    let maxValue = UInt8.max;
    func printIntInfo ()
    {
        println("UInt8.min is \(minValue)");
        println("UInt8.max is \(maxValue)");
    }


    /*
    浮点数
    Float 32位
    Double 64位
    注意：当推测浮点数时，总是Double，不是Float
    */
    let decimalInteger = 17;
    let exponentDouble = 1.21875e1;
    let binaryInteger = 0b10001;
    let octalInteger = 0o21;
    let hexadecimalInteger = 0x11;

    func printFloatInfo(){
        println("整数 is \(decimalInteger)");
        println("科学计数法 is \(exponentDouble)");
        println("二进制 is \(binaryInteger)");
        println("八进制 is \(octalInteger)");
        println("十六进制 is \(hexadecimalInteger)");
    }

    /*
    typealias关键字定义类型别名
    */
    typealias AudioSample = UInt16
    //不同类型数据需要转换成统一类型再进行运算。
    let num_one:AudioSample = 1;
    let num_two:UInt8 = 2;
    
    
    /*
    元组,一般用于临时组织值时使用，如果考虑存储数据，建议使用结构体或类
    */
    let http200Status = (200, "OK");
    let http400Status = (404, "Not Found");
    let http500Status = (stateno:500,statemsg:"Server Error");
    
    func printTuplesInfo()->(Int,String)
    {
        println("http200status message: \(http200Status.0) \(http200Status.1)");
        
        var (statusno,statusmsg) = http400Status;
        println("http400status message: \(statusno) \(statusmsg)");
        
        println("http500Status message: \(http500Status.stateno) \(http500Status.statemsg)");
        
        return http500Status;
    }
    
    
    
    
}