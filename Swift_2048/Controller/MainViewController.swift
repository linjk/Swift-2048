//
//  MainViewController.swift
//  Swift_2048
//
//  Created by apple on 1/6/16.
//  Copyright © 2016 LinJK. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    //游戏方格维度
    var dimension:Int = 4
    var maxNumber:Int  = 2048
    //数字格子的宽度
    var width:CGFloat = 50
    //格子之间的间距
    var padding:CGFloat = 6
    
    var backgrounds:Array<UIView>
    
    init(){
        self.backgrounds = Array<UIView>()
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        setupBackground()
        getNumber()
    }
    
    func setupBackground(){
        var x:CGFloat = 30
        var y:CGFloat = 150
        
        for _ in 0...dimension-1{
            y = 150
            
            for _ in 0...dimension-1{
                let background = UIView(frame: CGRectMake(x, y, width, width))
                background.backgroundColor = UIColor.darkGrayColor()
                
                self.view.addSubview(background)
                backgrounds.append(background)
                
                y += padding + width
            }
            
            x += padding + width
        }
    }
    
    func getNumber(){
        let randV = Int(arc4random_uniform(10))
        
        var seed:Int = 2
        if (randV == 1){
            seed = 4
        }
        
        let col = Int(arc4random_uniform(UInt32(dimension)))
        let row = Int(arc4random_uniform(UInt32(dimension)))
        insertTitle((col, row), value: seed)
    }
    
    func insertTitle(pos:(Int, Int), value:Int){
        let (row, col) = pos
        //
        let x = 30 + CGFloat(col) * (width + padding)
        let y = 150 + CGFloat(row) * (width + padding)
        
        let title = TitleView(pos: CGPointMake(x, y), width: width, value: value)
        self.view.addSubview(title)
        self.view.bringSubviewToFront(title)
        
        title.layer.setAffineTransform(CGAffineTransformMakeScale(0.1, 0.1))
        UIView.animateWithDuration(0.3, delay: 0.1,
            options: UIViewAnimationOptions.TransitionNone,
            animations: { () -> Void in
                title.layer.setAffineTransform(CGAffineTransformMakeScale(1, 1))
        }, completion:{
            (finished:Bool) -> Void in
                UIView.animateWithDuration(0.08, animations: {
                    () -> Void in
                    title.layer.setAffineTransform(CGAffineTransformIdentity)
                })
        })
    }
}
