//
//  ProtocolLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-8.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class ProtocolLearn
{
    func printProtocolLearn()
    {
        var dog:Dog = Dog()
        println("dog has \(dog.legs) legs");
        dog.call("BangBang");
        dog.run();
        
        var cat:Cat = Cat();
        println("cat has \(cat.legs) legs");
        cat.call("BangBang");
        cat.run();
        println("****************");
        
        var p1 = performance(animal:dog);
        p1.perform();
        var p2 = performance(animal:cat);
        p2.perform();
        var p3 = performance(animal:Person(name:"shenchao"));
        p3.perform();
        
        var p4 = performance(animal:Panda());
        p4.perform();
        
        //协议被集合使用
        let animals:[Animal] = [dog,cat,Panda()];
        for item in animals
        {
            item.call("58bangbang");
        }
        
        
    }
    
    
}

class performance
{
    var animal:Animal;
    
    init(animal:Animal)
    {
        self.animal = animal;
    }
    
    func perform()
    {
        println("perform start!!!");
        animal.call("bangbang");
        animal.run();
        println("perform end!!!");
    }
    
}


//1、协议能够要求其遵循者必须含有一些特定名称和类型的实例属性(instance property)或类属
//   性 (type property)，也能够要求属性的(设置权限)settable 和(访问权限)gettable，但它不要
//   求属性是存储型属性(stored property)还是计算型属性(calculate property)。

//2、协议方法不支持默认参数,当要定义类成员时，类用class ，结构体用static
//   对于变异方法，类中不需要关键字，结构体等值类型中需要关键字mutating
protocol Animal
{
    var legs:Int {get set}
    
    func call(callstr:String) -> String;
    
    mutating func run();
}

class Dog:Animal
{
    var legs:Int = 4;
    
    func call(callstr:String) -> String
    {
        var str = "汪汪汪汪！！！ \(callstr)"
        println(str);
        return str;
    }
    
    func run()
    {
        println("dog running!!!")
    }
}

struct Cat:Animal
{
    var  legs:Int = 4;
    
    func call(callstr:String) -> String
    {
        var str = "喵喵喵喵！！！ \(callstr)";
        println(str);
        return str;
    }
    
    mutating func run()
    {
        println("cat running!!!")
    }
}

extension Person:Animal
{
    var legs:Int{
        get{
            return 2;
        }
        set{
            
        }
    }
    
    func call(callstr:String) -> String
    {
        var str = "你好，！！！ \(callstr)";
        println(str);
        return str;
    }
    
    func run()
    {
        println("person running");
    }
}

class Panda
{
    var legs:Int = 4;
    
    func call(callstr:String) -> String
    {
        var str = "!@#!$@!^!&^!$%!，！！！ \(callstr)";
        println(str);
        return str;
    }
    
    func run()
    {
        println("panda running");
    }

}
//延迟补充声明协议
extension Panda:Animal {}

//协议的继承
protocol Mammal:Animal
{
    func say();
}

class SayHello
{
    //协议组合，并不会生成新的协议，而是临时生成
    func sayHello(protocol<Animal,Mammal>)
    {
        println("say hello");
    }
}

//通过is as as? 验证协议的一致性

//注意：@objc 用来表示协议是可选的，也可以用来表示暴露给 Objective-C 的代码，此外，@objc 型协议只对类有效，因此只能在类中检查协议的一致性。详
//可选协议智能在@objc协议中生肖，@objc只能被类遵循。
@objc protocol CarProtocol
{
    @optional func maxSpeed();
}

@objc class InfinitiCar:CarProtocol
{
    func maxSpeed()
    {
        println("速度老NB了")
    }
}

@objc class QQCar:CarProtocol
{
    
}
