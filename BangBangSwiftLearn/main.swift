//
//  main.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-6-30.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//基础认识
var bl:BaseLearn = BaseLearn();
bl.sayHello("xiaoc");
println("--------------------------------------华丽的分隔符-----------------------------------------------");

//类型和类型安全
var ts:TypeSafe = TypeSafe();
ts.printIntInfo();
ts.printFloatInfo();
ts.printTuplesInfo();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

//运算测试类
var op:Operation = Operation();
op.printIntervalOperation();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

//字符串和字符测试
var sac:StringAndChararcter = StringAndChararcter();
sac.printEmptyString();
sac.printCountElement();
sac.printPrefixAndSuffix();
sac.printUpperAndLower();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var al:ArrayLearn = ArrayLearn();
al.pringArrayLearn();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var dl:DictionaryLearn = DictionaryLearn();
dl.printDictionaryLearn();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var cf:ControlFlow = ControlFlow();
cf.printFor();
cf.printWhile();
cf.printIf();
cf.printSwitch();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var fl:FunctionLearn = FunctionLearn();
fl.printFunctionLearn();
var ft:FunctionType = FunctionType();
ft.printFunctionType();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var cl:CloseuresLearn = CloseuresLearn();
cl.printCloseures();
var tc:TrailingCloseures = TrailingCloseures();
tc.printTrailingCloseures();
var cc:CaputureClosures = CaputureClosures();
cc.printCaputureClosures();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var el:EnumLearn = EnumLearn();
el.printEnumLearn();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var cs:ClassAndStruct = ClassAndStruct();
cs.printClassAndStruct();
var coc:CollectionCopy = CollectionCopy();
coc.printCollectionCopy();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var sp:StoredProperties = StoredProperties();
sp.printStoredProperties();
var cp:ComputedProperties = ComputedProperties();
cp.printComputedProperties();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var im:InstanceMethod = InstanceMethod();
im.printInstanceMethod();
var tm:TypeMethod = TypeMethod();
tm.printTypeMethod();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var sl:SubscriptLearn = SubscriptLearn();
sl.printSubscript();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var il:InheritanceLearn = InheritanceLearn();
il.printInheritance();
println("--------------------------------------华丽的分隔符-----------------------------------------------");


var initl1:InitializationLearn = InitializationLearn(en_US:"bangbang");
println(initl1.initParam);
var initl2:InitializationLearn = InitializationLearn(ch_NA:"帮帮");
println(initl2.initParam);
var subinitl:InitializationLearnSubClass = InitializationLearnSubClass();
println(subinitl.subpro);

var subinitl2:InitializationLearnSubClass2 = InitializationLearnSubClass2(ch_NA:"帮帮");
//使用ch_NA，报错，没有继承父类构造方法。
var subinitl3:InitializationLearnSubClass3 = InitializationLearnSubClass3(jp:"帮帮")

var subinitl4:InitializationLearnSubClass4 = InitializationLearnSubClass4();

var initbyc:initPorpertyByClosure = initPorpertyByClosure();
println("\(initbyc.result)");
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var disc:DeInitializationLearnSubClass? = DeInitializationLearnSubClass();
disc = nil;
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var arc1:ARCLearn = ARCLearn();
arc1.printARCLearn();
var arc2:ARCLearn2 = ARCLearn2();
arc2.printARCLearn2();
var arc3:ARCLearn3 = ARCLearn3();
arc3.printARCLearn3();
var arc4:ARCLearn4 = ARCLearn4();
arc4.printHTMLElement();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var ocl:OptionalchainingLearn = OptionalchainingLearn();
ocl.printOptionalchainingLearn();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var tcl:TypeCastLearn = TypeCastLearn();
tcl.printTypeCastLearnIS();
tcl.printTypeCastLearnAS();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var nt:NestedType = NestedType();
nt.printNestedType();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var extl:ExtensionLearn = ExtensionLearn();
extl.printExtensionLearn();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var pl:ProtocolLearn = ProtocolLearn();
pl.printProtocolLearn();
println("--------------------------------------华丽的分隔符-----------------------------------------------");

var gl:GenericsLearn = GenericsLearn();
gl.printGenericsLearn();

