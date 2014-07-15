//
//  StoredProperties.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-3.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class StoredProperties
{
    //@lazy 
    //1、必须是变量，不能是常量。常量属性在构造完成之前必须要有初始值。
    //2、第一次访问属性的时候才去创建对象
    @lazy var vm:VideoMode = VideoMode();
    
    func printStoredProperties()
    {
        //值类型的实例被生命为常量的时候，他的所有属性也是常量
        let reso:Resolution = Resolution(width:1024,height:768);
        //会引发编译错误
        //reso.width = 1920;
        
        //引用类型声明为常量，他的属性可以被改变
        let video:VideoMode = VideoMode();
        video.frameRate = 60;
        
    }

}