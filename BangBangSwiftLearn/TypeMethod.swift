//
//  TypeMethod.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-4.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//在类型方法中self指的类型本身
class TypeMethod
{
    
    func printTypeMethod()
    {
        TypeMethod.executeTypeMethod();
        Point3.executeTypeMethod()
    }
    
    class func executeTypeMethod()
    {
        println("class executeTypeMethod executed!!!");
    }
    
}

//一般情况，值类型属性不能不能在实例方法中被修改。如果修改可选用mutating变异方法
struct Point3
{
    var x = 0.0;
    var y = 0.0;
    
    static func executeTypeMethod()
    {
        println("struct executeTypeMethod executed!!!");
    }
}