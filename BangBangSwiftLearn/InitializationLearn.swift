//
//  InitializationLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-6.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//类和结构体在实例创建时，必须为所有的存储属性设置初始值。并且赋默认值和构造其中赋值不会触发监察器。
//如果类中属性都有默认值，则可调用默认构造器。结构体的逐一构造器参见结构体。
class InitializationLearn
{

    var initParam:String ;
    //可选类型默认是为nil。
    var opptionParam:String? ;
    
    //常量在构造过程中可以修改。但只能在定义它的类中修改，不能在子类中修改。
    let languageType:String = "Chinese";
    
    var subpro:Int;
    
    init(ch_NA:String)
    {
        initParam = "你好," + ch_NA;
        languageType = "Chinese";
        subpro = 0;
    }
    
    init(en_US:String)
    {
        initParam = "Hello," + en_US;
        languageType = "English";
        subpro = 0;
    }
    
    convenience init()
    {
        self.init(ch_NA:"58BangBang");
    }
    
}


//构造子类
//指定构造器：每个类至少有一个指定构造器，初始化类中所有属性，并调用父类链属性。
//便利构造器：辅助型，调用指定构造器提供默认值。convenience
//构造器链规则：1、置顶构造器必须调用其直接父类的置顶构造器。
//            2、便利构造器必须调用同一类中的其他构造器，最后以调用指定构造器结束。

//安全检查 1
//指定构造器必须保证它所在类引入的所有属性都必须先初始化完成，之后才能将其它构造
//任务向上代理给父类中的构造器。
//
//如上所述，一个对象的内存只有在其所有存储型属性确定之后才能完全初始化。为了满足
//这一规则，指定构造器必须保证它所在类引入的属性在它往上代理之前先完成初始化。
//
//安全检查 2
//指定构造器必须先向上代理调用父类构造器，然后再为继承的属性设置新值。如果没这么
//做，指定构造器赋予的新值将被父类中的构造器所覆盖。
//
//安全检查 3
//便利构造器必须先代理调用同一类中的其它构造器，然后再为任意属性赋新值。如果没这
//么做，便利构造器赋予的新值将被同一类中其它指定构造器所覆盖。
//
//安全检查 4
//构造器在第一阶段构造完成之前，不能调用任何实例方法、不能读取任何实例属性的值，
//也不能引用 self 的值。

//测试二段式构造。
class InitializationLearnSubClass:InitializationLearn
{
    var subproperty:Int;
    var selfproperty:Int;
    init()
    {
        //放在super下编译报错，验证检查一
        subproperty = 1;
        //检查四问题，使用了self
        selfproperty = self.subproperty;
        
        super.init(en_US:"BangBang");
        //放在super上编译报错，验证检查二
        subpro = 1;
        //放在super上编译报错，验证检查四
        printSub();
    }

    convenience init(subproperty:Int)
    {
        self.init();
        //放在self.init()上报错，验证检查三
        self.selfproperty = subproperty;
    }

    func printSub()
    {
        println("println subclass test method!");
    }
    
}

//Swift 子类不会默认继承父类构造器。为防止通过父类构造创建子类对象。如果满足下列规则，可以继承父类构造器
//重载构造器是不需要使用override关键字。
//规则 1
//如果子类没有定义任何指定构造器，它将自动继承所有父类的指定构造器。
//
//规则 2
//如果子类提供了所有父类指定构造器的实现--不管是通过规则 1 继承过来的，还是通过自定义实现的--它将自动继承所有父类的便利构造器。
//
//测试构造继承、重载。验证规则一
class InitializationLearnSubClass2:InitializationLearn
{
    
}

//不符合规则一
class InitializationLearnSubClass3:InitializationLearn
{
    init(jp:String)
    {
        super.init(ch_NA:"....");
        initParam = "....," + jp;
        subpro = 0;
    }
}

//符合规则二。可以调用其他快捷构造
class InitializationLearnSubClass4:InitializationLearn
{
    init(ch_NA:String)
    {
        super.init(ch_NA:ch_NA);
    }
    
    init(en_US:String)
    {
        super.init(en_US:en_US);
    }
}

//测试闭包初始化，{}后由（）
//如果你使用闭包来初始化属性的值，请记住在闭包执行时，实例的其它部分都还没
//有初始化。这意味着你不能够在闭包里访问其它的属性，就算这个属性有默认值也不允
//许。同样，你也不能使用隐式的 self 属性，或者调用其它的实例方法。
class initPorpertyByClosure
{
    var result:Int = {
        var res = 0;
        for i in 1...10
        {
            res += i
        }
        return res;
        }();
}





