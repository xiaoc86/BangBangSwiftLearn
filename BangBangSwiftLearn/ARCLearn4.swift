//
//  ARCLearn4.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-7.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class ARCLearn4
{
    func printHTMLElement()
    {
        var element:HTMLElement? = HTMLElement(name:"a",text:"www.58.bangbang.com");
        println("\(element!.asHTML())");
        element = nil;
    }
}

class HTMLElement
{
    let name:String;
    let text:String?;
    
    init(name:String,text:String? = nil)
    {
        self.name = name;
        self.text = text;
    }
    
    //lazy的属性可以使用self
    //引用多次self，但是只有一个强引用。?????为啥不释放呢
    @lazy var asHTML:()->String =
    {
        [unowned self] ()-> String in
        
        if self.text
        {
            return "<\(self.name)>\(self.text)</\(self.name)>";
        }
        else
        {
            return "<\(self.name)/>";
        }
    }

    deinit
    {
        println("htmlelement deinit");
    }
    
}