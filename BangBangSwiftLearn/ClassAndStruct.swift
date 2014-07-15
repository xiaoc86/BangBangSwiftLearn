//
//  ClassAndStruct.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-2.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//相同点：
//定义属性用于储存值
//定义方法用于ᨀ供功能
//定义下标用于通过下标语法访问值
//定义初始化器用于生成初始化值
//通过扩展以增加默认实现的功能
//符合协议以对某类提供标准功能
//
//类附加功能：
//继承允许一个类继承另一个类的特征
//类型转换允许在运行时检查和解释一个类实例的类型
//取消初始化器允许一个类实例释放任何其所被分配的资源
//引用计数允许对一个类的多次引用
//
//注意：结构体总是通过被复制的方式在代码中传递，因此请不要使用引用计数。
class ClassAndStruct
{
    
    func printClassAndStruct()
    {
        //实例化结构体
        var reso:Resolution = Resolution(width:1024,height:768);
        //实例化类
        var video:VideoMode = VideoMode();
        
        //访问结构体属性
        reso.width = 1024;
        println("visit struct property width: \(reso.width)");
        
        //访问类属性
        video.frameRate = 60.0;
        println("visit class property \(video.frameRate)");
        
        printStruct();
        printClass();
        
    }
    
    //验证结构体为值类型
    func printStruct()
    {
        //实例化结构体
        var r1:Resolution = Resolution(width:1024,height:768);
        var r2 = r1;
        r2.width = 1920;
        
        println("r1 width:\(r1.width) , r2 width \(r2.width)");
    }
    
    //验证类为引用类型
    func printClass()
    {
        //实例化类
        var v1:VideoMode = VideoMode();
        var v2 = v1;
        v2.frameRate = 65;
        
        println("v1 frameRate:\(v1.frameRate) , v2 frameRate \(v2.frameRate)");
        
        //=== !==用于判断常亮、变量引用的是否为同一实例
        println("v1 ,v2 is same instance : \(v1 === v2)");
    }
    
    
}

//结构体默认提供成员逐一初始化器，用于初始化新结构体属性，通过属性名称设置如：Resolution(width:1024,height:768)
//选用结构体：
//结构体的主要目的是用来封装少量相关简单数据值。
//有理由预计一个结构体实例在赋值或传递时，封装的数据将会被拷贝而不是被引用。
//任何在结构体中储存的值类型属性，也将会被拷贝，而不是被引用。
//结构体不需要去继承另一个已存在类型的属性或者行为。
struct Resolution
{
    var width = 0;
    var height = 0;
}

class VideoMode
{
    var reso:Resolution = Resolution();
    var frameRate = 0.0;
}


