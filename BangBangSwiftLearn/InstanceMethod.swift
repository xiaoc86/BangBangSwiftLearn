//
//  InstanceMethod.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-4.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class InstanceMethod
{

    var orig:Point? = nil;
    
    func setOrig(orig:Point)
    {
        //相当于java ，as中的this
        self.orig = orig;
    }
    
    func setInt(var i:Int)
    {
        i = 2;
    }
    
    func printInstanceMethod()
    {
        setOrig(Point(x:100,y:100));
        if orig
        {
            println("orig (x,y):(\(orig!.x),\(orig!.y))");
        }
        
        //如果生命为let，则不能调用变异方法
        var p2 = Point2(x:0,y:0);
        p2.moveBy(50,delatY:50);
        println("p2 (x,y):(\(p2.x),\(p2.y))");
        
    }
    
    
}

//一般情况，值类型属性不能不能在实例方法中被修改。如果修改可选用mutating变异方法
struct Point2
{
    var x = 0.0;
    var y = 0.0;
    
    mutating func moveBy(delatX:Double,delatY:Double)
    {
        x += delatX;
        y += delatY;
    }
    
}