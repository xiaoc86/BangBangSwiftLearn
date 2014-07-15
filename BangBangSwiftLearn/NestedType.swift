//
//  NestedType.swift
//  BangBangSwiftLearn
//
//  Created by 申超 on 14-7-7.
//  Copyright (c) 2014年 58. All rights reserved.
//

import Foundation

class NestedType
{
    func printNestedType()
    {
        var pc:PokerCard = PokerCard(suit:PokerCard.Suit.Hearts, rank: PokerCard.Rank.Ace);
        println(pc.desc)
        //访问嵌套内容需要嵌套类型的名字为前缀。
        println(PokerCard.Suit.Spades.toRaw());
    }
    
}

struct PokerCard
{
    enum Suit: Character {
        case Spades = "♠", Hearts = "♡", Diamonds = "♢", Clubs = "♣"
    }
    
    enum Rank: Int
    {
        case Ace=1,Tow,Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King;
    }
    
    let suit:Suit;
    let rank:Rank;
    
    var  desc:String {
        return "the pokercard ,suit: \(suit.toRaw()) ,value: \(rank.toRaw())";
    }

}