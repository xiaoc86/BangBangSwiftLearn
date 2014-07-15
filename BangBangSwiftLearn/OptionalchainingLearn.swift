//
//  OptionalchainingLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-7.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class OptionalchainingLearn
{
    
    func printOptionalchainingLearn()
    {
        var person:CityPerson = CityPerson(name:"bangbang");
        var cityhouse:CityHouse = CityHouse(number:123456789);
        var cityaddress:Address = Address(roomnumber:"108号",postcode:100000,desc:"北京朝阳区四环到五环之间北京市朝阳区北苑路乙108号北美中心E座");
        //var cityaddress:Address = Address(roomnumber:"108号",postcode:100000);
        person.cityhouse = cityhouse;
        cityhouse.address = cityaddress;
        
        if let addressdesc = person.cityhouse?.address?.desc
        {
            println("the House of \(person.name) at \(addressdesc)");
        }else
        {
            println("the House of \(person.name) no desc");
        }
        
        //使用自判断链接调用方法时，及时方法没有返回值，只有存在方法依旧可以执行.方法返回nil不执行
        if person.cityhouse?.address?.printDesc()
        {
            println("the House");
        }else
        {
            println("no House");
        }
    }
    
}

class CityPerson:Person
{
    var cityhouse:CityHouse?;
}

class CityHouse:House
{
    var address:Address?;
}


class Address
{
    var desc:String?;
    var roomnumber:String?;
    var postcode:Int?;
    
    init(roomnumber:String?=nil,postcode:Int?=nil,desc:String?=nil)
    {
        self.roomnumber = roomnumber;
        self.postcode = postcode;
        self.desc = desc;
    }
    
    func printDesc() -> String?
    {
        println("\(desc)");
        return nil;
    }
    
}