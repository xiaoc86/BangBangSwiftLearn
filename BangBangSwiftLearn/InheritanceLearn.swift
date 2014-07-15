//
//  InheritanceLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-4.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class InheritanceLearn
{
    func printInheritance()
    {
        //创建子类
        var bicycle:Bicycle = Bicycle();
        bicycle.desc();
        
        var car:Car = Car();
        car.speed = 100;
        car.desc();
        
        var limitCar:SpeedLimitedCar = SpeedLimitedCar();
        limitCar.speed = 100;
        limitCar.desc();
        
        var autocar:AutomaticCar = AutomaticCar();
        autocar.speed = 30;
        autocar.desc();
        
        //@final 不可被重写，和不可被继承。
        
    }
}


class Vehicle
{
    var numbersOfWheels:Int ;
    var maxPesrons:Int ;
    
    init()
    {
        numbersOfWheels = 1;
        maxPesrons = 1;
    }
    
    func desc()
    {
        println("\(numbersOfWheels) wheels ; up to \(maxPesrons) persons");
    }

}


class Bicycle:Vehicle
{
    //初始化器默认是不能继承的
    init()
    {
        super.init();
        numbersOfWheels = 2;
        maxPesrons = 1;
    }
}


//重写方法
class Car:Vehicle
{
    
    var speed = 0.0;
    
    init()
    {
        super.init();
        numbersOfWheels = 4;
        maxPesrons = 5;
    }
    
    override func desc()
    {
        super.desc();
        println("the car speed : \(speed) mph");
    }
    

}


//重写属性
class SpeedLimitedCar:Car
{
    //重写属性时必须将名字和类型都写出来。去掉Double会报错
    //重写属性可以吧只读属性重写成读写属性，只要提供get、set方法即可。不可以吧一个读写属性重写成只读属性。
    //有set就要有get
    override var speed:Double
    {
    get{
        return super.speed;
    }
    set{
        super.speed = min(40,newValue)
    }
    }

}


//重写监察器
class AutomaticCar:Car
{
    
    var gear = 1;
    
    //不可以为常量或只读属性写监察器，因为不可set
    //不能同时写set和监察器。
    override var speed:Double
    {
        didSet
        {
            gear = Int(speed / 10) + 1;
        }
    
    }
    
    override func desc()
    {
        super.desc();
        println("car gear: \(gear)");
    }
    

}




