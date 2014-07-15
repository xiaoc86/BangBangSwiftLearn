//
//  FunctionLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-1.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class FunctionLearn
{
    
    func printFunctionLearn()
    {
        //注意防范和函数的区别
        printNameFun("shen",lastname:"chao");
        
        //多返回值
        var result = findOrigin();
        println("the origin is (\(result.pointx) \(result.pointy))");
        
        //形参,声明外部形参时必须使用
        paramFunctin(externalParamName:"Hello!!!");//paramFunctin("Hello!!!"); 这样是不对滴呦。
        paramFunctin2(localParamName:"Hello2!!!");
        paramFunctin3();
        paramFunctin4("Hello4!!!",p1:"Hello4!!!");
        paramFunctin5(1,2,3,4,5);
        
        //变量形参
        varParamFunction("shenchao");
        
        //inout形参
        var str1 = "Hello" , str2 = "shenchao";
        inoutParamFunction(&str1,str2:&str2);
        println("str1: \(str1) , str2 \(str2)");
        
    }
    
    /*
    注意：如果没有返回值 ，默认为Void ，空元组（）
    */
    func printNameFun(firstname:String , lastname:String) -> String
    {
        println("fullname : \(firstname) \(lastname)");
        return firstname + lastname;
    }
    
    /*
        多返回值函数
    */
    func findOrigin() -> (pointx:Int,pointy:Int)
    {
        return (0,0);
    }
    
    /*
        形参，调用时增强可读性
    */
    func paramFunctin(externalParamName localParamName : String)
    {
        println("paramFunctin param is \(localParamName)");
    }
    
    /*
        使用#，使外部形参和本地形参名称一致. 默认可以不添加#
    */
    func paramFunctin2(#localParamName : String)
    {
        println("paramFunctin param is \(localParamName)");
    }
    
    /*
        带有没默认值参数。末尾放置
    */
    func paramFunctin3(localParamName : String = "Hello3!!!")
    {
        println("paramFunctin param is \(localParamName)");
    }
    
    /*
        函数默认为参数提供外部调用名称
    */
    func paramFunctin4(p0:String,p1:String)
    {
        println("paramFunctin param is \(p0)");
    }
    
    /*
        可变形参, 注意：函数最多带有一个可变形参，并且位置放在最后。
    */
    func paramFunctin5(numbers:Int ...)
    {
        println("paramFunctin params length is \(numbers.count)");
        println("paramFunctin params is \(numbers)");
    }
    
    /*
        变量形参，添加var关键字，为赋值形参副本。默认为常量，不可改变。
    */
    func varParamFunction(var wel:String)
    {
        wel = "Hello " + wel;
        println(wel);
    }
    
    /*
        inout形参
    */
    func inoutParamFunction(inout str1:String,inout str2:String)
    {
        var temp = str1;
        str1 = str2;
        str2 = temp;
    }
    
    
    
    

}