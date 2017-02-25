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
    
    let tileX = UIImage(named: "cross.png")
    
    let tileO = UIImage(named: "nought.png")
    
    enum TileState {
        case move(String)
        case empty
    }
    
    @IBAction func tile(_ sender: UIButton) {
        var tile: TileState?
        
        if sender.currentImage != nil {
            switch playerMove {
            case "x":
                sender.setImage((UIImage(named: "cross.png")), for: .normal)
                tile = .move("x")
                playerMove = "o"
            case "o":
                sender.setImage((UIImage(named: "nought.png")), for: .normal)
                tile = .move("o")
                playerMove = "x"
            default:
                print("Cannot make a move")
            }
        }
        
        if tile != nil {
            print("\(tile)")
        }

    }

}

