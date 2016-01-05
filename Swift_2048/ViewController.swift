//
//  ViewController.swift
//  Swift_2048
//
//  Created by apple on 1/6/16.
//  Copyright © 2016 LinJK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startGame(sender: UIButton){
        let alertView = UIAlertView()
        alertView.title   = "Info"
        alertView.message = "Game is ready, you ready?"
        alertView.addButtonWithTitle("GO")
        alertView.show()
    }
}

