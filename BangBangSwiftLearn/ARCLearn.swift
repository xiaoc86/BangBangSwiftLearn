
//
//  ARCLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-7.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation
//两个属性的值都可能是 nil,并有可能产生强引用环。这种场景下适合使用弱引用。
class ARCLearn
{
    func printARCLearn()
    {
        var p:Person? = Person(name:"Bangbang");
        var h:House? = House(number:10);
        
        p!.house = h;
        h!.person = p;
        
        p = nil;
        h = nil;
    }

}

//弱引用，不会增加实例计数。所以不影响ARC回收。关键字weak
//弱引用只能声明变量类型，因为可以在运行时改变，所以不可以用于声明常量
//因为弱引用可以没有值，所以类型必须是可选的。
class Person
{
    let name:String ;
    
    init(name:String)
    {
        self.name = name;
    }
    var house:House?
    
    deinit
    {
        println("the person deinit!!!");
    }
    
}


class House
{
    let numnber:Int;
    init(number:Int)
    {
        self.numnber = number;
    }
    
    weak var person:Person?;
    deinit
    {
        println("the house deinit!!!");
    }
}