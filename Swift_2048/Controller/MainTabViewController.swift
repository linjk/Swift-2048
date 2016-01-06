//
//  MainTabViewController.swift
//  Swift_2048
//
//  Created by apple on 1/6/16.
//  Copyright © 2016 LinJK. All rights reserved.
//

import UIKit

class MainTabViewController : UITabBarController{
    init(){
        super.init(nibName: nil, bundle: nil)
        //
        let viewMain = MainViewController()
        viewMain.title = "2048"
        
        let viewSetting = SettingViewcontroller()
        viewSetting.title = "Setting"
        
        let main = UINavigationController(rootViewController: viewMain)
        let setting = UINavigationController(rootViewController: viewSetting)
        self.viewControllers = [
            main,
            setting
        ]
        self.selectedIndex = 0
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}