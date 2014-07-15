//
//  GenericsLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-9.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class GenericsLearn
{
    var shoppingList: [String] = ["Eggs", "Milk"];
    var airports:Dictionary<String,String> = ["keyone":"valueone","keytwo":"valuetwo","keythree":"valuethree"];
    
    //泛型函数,同样可以使用指定类型或协议进行约束
    func swapTwoValues<T>(inout p1:T,inout p2:T)
    {
        var temp = p1;
        p1 = p2 ;
        p2 = temp;
    }
    
    func printGenericsLearn()
    {
        var s1 = IntStack();
        var s2 = Stack<Int>();
        var s3 = Stack<String>()
        allItemsMatch(s1,anotherContainer:s2);
        //allItemsMatch(s1,anotherContainer:s3);
    }
    
    func allItemsMatch<C1: Container, C2: Container where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>(someContainer: C1, anotherContainer: C2) -> Bool
    {
        println("allItemsMatch execute");
        return true;
    }
    
}


//泛型类型
struct Stack<T>:Container
{
    var items = [T]();
    
    mutating func push(item:T)
    {
        items.append(item)
    }
    
    mutating func pop() -> T
    {
        return items.removeLast();
    }
    
    mutating func addItem(item:T)
    {
        items.append(item);
    }
    mutating func getItemAt(index:Int)->T
    {
        return items[index];
    }
}

struct IntStack
{
    var items = [Int]();
    
    mutating func push(item:Int)
    {
        items.append(item)
    }
    
    mutating func pop() -> Int
    {
        return items.removeLast();
    }
}

//关联类型
protocol Container
{
    typealias ItemType;
    
    mutating func addItem(item:ItemType);
    mutating func getItemAt(index:Int)-> ItemType;
}

extension IntStack:Container
{
    mutating func addItem(item:Int)
    {
        items.append(item);
    }
    mutating func getItemAt(index:Int)->Int
    {
        return items[index];
    }
}








