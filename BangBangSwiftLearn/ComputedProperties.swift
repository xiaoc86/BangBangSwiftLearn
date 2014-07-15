//
//  ComputedProperties.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-3.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//1、对于值类型（指结构体和枚举）可以定义存储型和计算型类型属性，对于类（class）则只能定义计算型类型属性。类型属性必须制定默认值
//2、全局的常量或变量都是延迟计算的，跟延迟存储属性相似，不同的地方在于，全局的常量或变量不需要标记@lazy。
class ComputedProperties
{
    //类型属性，相当远as，java静态属性。
    //class var classGlobal = "testClassGlobalstr";
    class var classGlobal:String
    {
        return "testClassGlobalstr";
    };
    
    
    func printComputedProperties()
    {
        var r1:Rect = Rect(origin:Point(x:10,y:10),size:Size(width:20,height:20),color:0x000000);
        println("r1 center : (x,y):(\(r1.center.x) ,\(r1.center.y))");
        
        r1.center = Point(x:0,y:0);
        println("r1 new center : (x,y):(\(r1.center.x) ,\(r1.center.y))");
        
        r1.color = 0xFFFFFF;
    }
}

struct Point
{
    var x = 0.0;
    var y = 0.0;
}

struct Size
{
    var width = 0.0;
    var height = 0.0;
    
    static var structGlobal = "testStructGlobalstr";
}

struct Rect
{
    var origin = Point();
    var size = Size();
    
    var center:Point
    {
        get {
            var cx = origin.x + 1/2 * size.width;
            var cy = origin.y + 1/2 * size.height;
            return Point(x:cx,y:cy);
        }
        //没有set方法，为只读属性
        set(newcenter){
            origin.x = newcenter.x - 1/2 * size.width;
            origin.y = newcenter.y - 1/2 * size.height;
        }
    
    }
    
    var color:Int = 0x000000
    {
        //设置新值之前调用
        willSet{
            println("color: \(color) ,newValue: \(newValue)");
        }
        //设置新值之后调用
        didSet{
            println("color: \(color) oldValue: \(oldValue)");
        }
    
    }
    
}