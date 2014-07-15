//
//  ARCLearn3.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-7.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//  两个属性都必须有值，且初始化完成后不能为 nil。这种场景下，则要一个类用无主引用属性，另一个类用隐式展开的可选属性。
class ARCLearn3
{
    func printARCLearn3()
    {
        var country:Country? = Country(name:"中国");
        var city:City? = City(name:"北京",country:country!);
        country!.city = city!;
        
        country = nil;
        city = nil;
    }
}

class Country
{
    let name:String;
    var city:City!;
    init(name:String)
    {
        self.name = name;
    }
    
    deinit
    {
        println("country deinit");
    }
}

class City
{
    let name:String;
    unowned var country:Country;
    
    init(name:String,country:Country)
    {
        self.name = name;
        self.country = country;
    }
    
    deinit
    {
        println("city deinit");
    }
}