//
//  FunctionType.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-2.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation
/*
函数类型
1、测试函数可以作为参数传递
2、测试函数可以作为返回值
3、测试函数可以嵌套
*/
class FunctionType{

    
    func printFunctionType()
    {
        var m=10,n=5;
        executeFun(switchFun("+"),a:m,b:n);
        executeFun(switchFun("-"),a:m,b:n);
        executeFun(switchFun("*"),a:m,b:n);
    
    }
   
    //根据符号选择方法
    func switchFun(sign:String) -> (Int,Int)->Int
    {
       
        
        switch sign
        {
            case "+":
                return add;
            case "-":
                return sub;
            default:
                println("Error Sign: \(sign)")
        }
        
        //嵌套方法
        func donothing(a:Int,b:Int)->Int{
            println("do nothing!!!");
            return 0;
        }
        
        return donothing;
       
    }
    
    //执行方法
    func executeFun(fun:(Int,Int)->Int,a:Int,b:Int)
    {
        var result = fun(a,b);
        println("function result is \(result)");
    }
    
    /*
        加
    */
    func add(a:Int ,b:Int)-> Int
    {
        return a + b;
    }
    
    /*
        减
    */
    func sub(a:Int ,b:Int)->Int
    {
        return a - b;
    }

}