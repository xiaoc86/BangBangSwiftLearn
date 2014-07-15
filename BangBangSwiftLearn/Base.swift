//
//  Base.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-6-30.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class BaseLearn{
    //这是一个变量,注意：我可不带类型和分号，嘎嘎，java你行吗：）
    var welcomeVar = "Hello World!!!"

    //这是一个常亮，不可改变的呦！
    let welcomeLet:String = "Hello World!!!";

    /*
        我是一个大注释
        可以注释超多的内容，吼吼吼！！！
    */
    func sayHello(name:String) -> String
    {
        println("welcome var is \(welcomeVar)");
        welcomeVar = "Hello " + name;
        
        println("welcome let is \(welcomeLet)");
        
        //打开我会报错滴，要小心。
        //welcomeLet = "Hello " + name;
        
        println(welcomeVar);
        
        return name + welcomeVar;
    }
   
}