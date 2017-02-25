//
//  ViewController.swift
//  Tic_Tac_Toe_ios
//
//  Created by Erin Moon on 1/13/17.
//  Copyright © 2017 Erin Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var playerMove: String = "x"
    
    @IBAction func tile(_ sender: UIButton) {
        if playerMove == "x" {
            print("\(playerMove)")
            playerMove = "o"
        } else {
            print("\(playerMove)")
            playerMove = "x"
        }
    }

}

