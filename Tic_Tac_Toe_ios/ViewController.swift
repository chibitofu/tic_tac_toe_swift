//
//  ViewController.swift
//  Tic_Tac_Toe_ios
//
//  Created by Erin Moon on 1/13/17.
//  Copyright © 2017 Erin Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nextMove: UIImageView!
    
    var playerMove: String = "x"
    
    var moves = 0
    
    let tileX = UIImage(named: "cross.png")
    
    let tileO = UIImage(named: "nought.png")
    
    enum TileState {
        case move(String)
        case empty
    }
    
    @IBAction func tile(_ sender: UIButton) {
        if sender.currentImage == nil {
            switch playerMove {
            case "x":
                sender.setImage((UIImage(named: "cross.png")), for: .normal)
                playerMove = "o"
                moves += 1
                nextMove.image = tileO
            case "o":
                sender.setImage((UIImage(named: "nought.png")), for: .normal)
                playerMove = "x"
                moves += 1
                nextMove.image = tileX
            default:
                print("Cannot make a move")
            }
        }

        if moves == 9 {
            nextMove.image = nil
            print("Game Over")
        }
    }

}

