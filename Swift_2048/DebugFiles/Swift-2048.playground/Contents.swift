//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var i:Int
var j:Int = 0
for i = 1; i < 5; i++ {
    j += i
}

var button = UIButton()
button.setTitle("Hello", forState: .Normal)
button.backgroundColor = UIColor.redColor()
button.titleLabel!.textColor = UIColor.whiteColor()
button.frame = CGRectMake(0, 0, 200, 30)
