//
//  ARCLearn2.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-7.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//一个属性可以是 nil，另外一个属性不允许是 nil，并有可能产生强引用环。这种场景下适合使用无主引用
class ARCLearn2
{
    
    func printARCLearn2()
    {
        var cust:Customer? = Customer(name:"bangbang");
        var card:Card? = Card(number:10000,customer:cust!);
        
        cust = nil;
        card = nil;
    }
    
}


class Customer
{
    let name:String;
    init(name:String)
    {
        self.name = name;
    }
    
    var card:Card?;

    deinit
    {
        println("customer deinit");
    }
}

class Card
{
    var number:Int;
    unowned var customer:Customer;
    
    init(number:Int,customer:Customer)
    {
        self.number = number;
        self.customer = customer;
    }
    
    deinit
    {
        println("card deinit");
    }
}