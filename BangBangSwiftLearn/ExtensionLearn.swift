//
//  ExtensionLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-7.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation
//Swift 中的扩展可以：
//1. 添加计算型属性和计算静态属性,注意：扩展不可以添加存储属性，也不可以添加存数属性的观测器
//2. 定义实例方法和类型方法
//3. 提供新的构造器
//4. 定义下标
//5. 定义和使用新的嵌套类型
//6. 使一个已有类型符合Ḁ个接口
//注意：如果你定义了一个扩展向一个已有类型添加新功能，那么这个新功能对该类型的所有
//已有实例中都是可用的，即使它们是在你的这个扩展的前面定义的。
class ExtensionLearn
{
    
    func printExtensionLearn()
    {
        var double = 1000.0.cm;
        println(double);
        
        var rect = Rect(centerpoint:Point(x:0,y:0),size:Size(width:10,height:10));
        println("rect origin (x,y): (\(rect.origin.x),\(rect.origin.y))");
        
        var rep = 3;
        rep.repet({println("Hello,BangBang!")});
        rep.square();
        println("3 square is \(rep)");
        
        var num = 1234567890;
        println("num[3] is \(num[3])");
        println("num[4] is \(num[4])");
    }
    
    
    
    
}

//添加计算属性
extension Double
{
    var km:Double {return self * 1_000.00}
    var m:Double {return self}
    var cm:Double {return self/100}
    var mm:Double {return self/1_000}
}

//添加构造器
extension Rect
{
    init(centerpoint:Point,size:Size)
    {
        let originx:Double = centerpoint.x - 1/2 * size.width;
        let originy:Double = centerpoint.y - 1/2 * size.height;
        
        self.init(origin:Point(x:originx,y:originy),size:size,color:0x000000);
    }

}

//添加方法
extension Int
{
    func repet(task:()->())
    {
        for _ in 0..<self
        {
            task();
        }
    }

}


//添加修改实例方法
extension Int
{
    mutating func square()
    {
        self = self * self;
    }
}

//添加下标
extension Int
{
    subscript(index:Int) -> Int
    {
        var base:Int = 1;
            
            for _ in 1...index
            {
                base *= 10;
            }
            
            return (self / base) % 10;
    }
    
}







