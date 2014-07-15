//
//  DeInitializationLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-7.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class DeInitializationLearn
{
    var str = "Hello BangBang";
    
    deinit
    {
        str = "";
        println("super class deinit.str:\(str)");
    }
}

class DeInitializationLearnSubClass:DeInitializationLearn
{
    //子类反初始化执行那个之后，调用父类反初始化内容。即使没有子类反初始化函数，父类依旧执行。不可外部调用
    deinit
    {
        println("subclass deinit,str:\(str)");
        
    }
    
}