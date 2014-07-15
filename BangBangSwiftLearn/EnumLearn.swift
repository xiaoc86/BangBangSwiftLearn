//
//  EnumLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-2.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//枚举学习
class EnumLearn
{
    //声明枚举类型，不会被赋予一个默认的整数值
    enum Direction
    {
        case North
        case South
        case East
        case West
    }
    
    
    func printEnumLearn()
    {
        enumSwitch();
        enumAssociatedValue();
        enumRawValue();
    }
    
    //针对枚举使用switch
    func enumSwitch()
    {
        var direct = Direction.North;
        //一旦变量被声明成指定枚举类型，可以直接使用.进行访问
        direct = .West;
        
        //case 是要包含枚举中所有值，或者使用default
        switch direct
        {
            case .North:
                println("direct is North");
            case .South:
                println("direct is South");
            case .East:
                println("direct is East");
            case .West:
                println("direct is West");
        }
    
        
    }
    
    
    enum BarCode
    {
        case UPCA(Int,Int,Int)
        case QRCode(String)
    }
    
    //枚举类型，对不同的值可以关联不同的类型
    func enumAssociatedValue()
    {
        var bookcode = BarCode.UPCA(123,456,789);
        //bookcode = .QRCode("bangbanghelp");
        
        switch bookcode
        {
            case let .UPCA(numberSystem, identifier, check):
                println("the code type is upca , numberSystem:\(numberSystem) , identifier:\(identifier),check:\(check)");
            case let .QRCode(code):
                println("the code type is qrcode , code:\(code)");
        }
    }
    
    
    enum Planet:Int
    {
        case Mercury = 1, Venus=3, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
    }
    
    //原始值可以是字符串，字符，或者任何整型值或浮点型值。每个原始值在它的枚举声明中必
    //须是唯一的。当整型值被用于原始值，如果其他枚举成员没有值时，它们会自动递增
    func enumRawValue()
    {
        //toRaw方法可以访问该枚举成员的原始值
        println("Raw value is \(Planet.Earth.toRaw())");
        
        //fromRaw 方法来试图找到具有特定原始值的枚举成员,没有找到原始值时返回nil
        println("Earth raw is 3 ? \(Planet.fromRaw(3) == Planet.Earth)")
    }
    

}