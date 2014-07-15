//
//  SubScript.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-4.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class SubscriptLearn
{
    
    func printSubscript()
    {
        var mat:Matrix = Matrix(row:3,col:3);
        println(mat.grid)
        
        mat[2,2] = 3;
        mat[1,1] = 3;
        mat[0,0] = 3;
        println(mat.grid);
        
        println("mat[2,2]: \(mat[2,2])");
    }
}

struct Matrix
{
    let row = 0,col = 0;
    
    var grid:[Double];

    init(row:Int,col:Int)
    {
        self.row = row;
        self.col = col;
        grid = Array(count: row * col, repeatedValue:0.0);
    }
    
    //判断矩阵索引是否有效
    func indexIsValid(row:Int,col:Int) -> Bool
    {
        if row > self.row || row < 0 || col > self.col || col < 0
        {
            return false;
        }
        return true;
    }
    
    subscript (row:Int,col:Int) -> Double?
    {
        get{
            if indexIsValid(row,col:col)
            {
                return grid[row * self.col + col];
            }
            println("索引无效");
            return nil;
        }
        
        set{
            if indexIsValid(row,col:col)
            {
                grid[row * self.col + col] = newValue!;
            }else{
                println("索引无效");
            }
            
        }
    
    }

}

