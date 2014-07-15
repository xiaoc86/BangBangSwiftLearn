//
//  TypeCastLearn.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-7.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

//AnyObject可以代表任何class的实例
//Any可以表示任何类型，除了方法类型。
class TypeCastLearn
{
    let items = [
        Movie(name:"甲",director:"电影甲"),
        Movie(name:"乙",director:"电影乙"),
        Movie(name:"丙",director:"电影丙"),
        Movie(name:"丁",director:"电影丁"),
        Movie(name:"戊",director:"电影戊"),
        Song(name:"子",artist:"歌曲子"),
        Song(name:"丑",artist:"歌曲丑"),
        Song(name:"寅",artist:"歌曲寅"),
        Song(name:"卯",artist:"歌曲卯"),
        Song(name:"辰",artist:"歌曲辰"),
    ];
    
    func printTypeCastLearnIS()
    {
      
        var movienum:Int = 0;
        var songnum:Int = 0;
        for item in items
        {
            if item is Movie
            {
                movienum++;
            }
            if(item is Song)
            {
                songnum++;
            }
        }
        
        println("the list contains \(movienum) movies and \(songnum) songs");
    }
    
    
    func printTypeCastLearnAS()
    {
    
        for item in items
        {
            //使用as？当转型不成功返回nil，成功则返回对象。注意：在switch case语句中不是用as？,直接使用as总是安全的
            if let movie = item as? Movie
            {
                println("the movie name \(movie.name) ,the director \(movie.director)");
            }
            
            if let song = item as? Song
            {
                println("the song name \(song.name) ,the artist \(song.artist)");
            }
        
        }
        
    }
    
}

class MediaItem
{
    var name:String;
    init(name:String)
    {
        self.name = name;
    }
}

class Movie:MediaItem
{
    var director:String;
    init(name:String,director:String)
    {
        self.director = director;
        super.init(name:name);
    }
    
}

class Song:MediaItem
{
    var artist:String;
    init(name:String,artist:String)
    {
        self.artist = artist;
        super.init(name:name);
    }
    
}