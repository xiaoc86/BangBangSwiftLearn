//
//  CaputureClosures.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-2.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class CaputureClosures
{
    func printCaputureClosures()
    {
        var stepfun1 = stepNumber(10);
        println("stepfun1 result is \(stepfun1())");
        println("stepfun1 result is \(stepfun1())");
        println("stepfun1 result is \(stepfun1())");
        
        var stepfun2 = stepNumber(3);
        println("stepfun2 result is \(stepfun2())");
        println("stepfun2 result is \(stepfun2())");
        println("stepfun2 result is \(stepfun2())");
        
    }
    
    
    func stepNumber(step:Int)->()->Int
    {
        var initNum = 0;
        
        func stepFunc()->Int
        {
            initNum += step;
            return initNum;
        }
        
        return stepFunc;
    
    }
}