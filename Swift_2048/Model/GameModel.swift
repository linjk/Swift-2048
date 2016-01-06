//
//  GameModel.swift
//  Swift_2048
//
//  Created by apple on 1/6/16.
//  Copyright © 2016 LinJK. All rights reserved.
//

import Foundation

class GameModel {
    var dimession:Int = 0
    
    var title:Array<Int>
    
    var gModel:GameModel
    
    init(dimession:Int){
        self.dimession = dimession
        self.gModel = GameModel(dimession: self.dimession)
        self.title = Array<Int>(count: self.dimession*self.dimession, repeatedValue: 0)
    }
    
    //设置数字时位置的重复检测 : false -> 位置已经存在数字
    func setPosition(row:Int, col:Int, value:Int) -> Bool{
        assert(row>=0 && row<dimession)
        assert(col>=0 && col<dimession)
        
        let index = self.dimession * row + col
        let val   = title[index]
        
        if (val > 0){
            return false
        }
        
        title[index] = value
        
        return true
    }
    
    //返回数字为0，即空的位置数组
    func emptyPositions() -> [Int]{
        var emptyTitles = Array<Int>()
        
        for i in 0...(dimession*dimession){
            if (title[i] == 0){
                emptyTitles.append(i)
            }
        }
        
        return emptyTitles
    }
    
    func isFull() -> Bool{
        if (emptyPositions().count == 0){
            return true
        }
        
        return false
    }
}
