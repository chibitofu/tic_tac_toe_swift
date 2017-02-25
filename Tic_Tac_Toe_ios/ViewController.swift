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
    
    @IBOutlet weak var endGameLabel: UILabel!
    
    var playerMove: String = "x"
    
    var moves = 0
    
    var winner = "none"
    
    let tileX = UIImage(named: "cross.png")
    
    let tileO = UIImage(named: "nought.png")
    
    enum TileState {
        case move(String)
        case empty
    }
    
    let winStates = [
    [1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,6,7]
    ]
    
    var movesO = [String]()
    
    var movesX = [String]()
    
    func determineWinner(player: String, playerMoves: [String]) {
        for column in winStates {
            var matches = 0
            
            for i in 0..<playerMoves.count {
                if column[0] == Int(playerMoves[i]) {
                    matches += 1
                }
                
                if column[1] == Int(playerMoves[i]) {
                    matches += 1
                }
                
                if column[2] == Int(playerMoves[i]) {
                    matches += 1
                }
            }
            
            if matches == 3 {
                endGameLabel.text = "Winner is \(player.uppercased())"
                winner = player
                nextMove.image = nil
            } else if moves == 9 && winner == "none" {
                endGameLabel.text = "Draw"
                nextMove.image = nil
            }
        }
    }
    
    @IBAction func tile(_ sender: UIButton) {
        if sender.currentImage == nil {
            switch playerMove {
            case "x":
                sender.setImage((UIImage(named: "cross.png")), for: .normal)
                playerMove = "o"
                moves += 1
                nextMove.image = tileO
                if let currentTitle = sender.currentTitle {
                    movesX.append(currentTitle)
                }
                if movesX.count >= 3 {
                    determineWinner(player: "x", playerMoves: movesX)
                }
            case "o":
                sender.setImage((UIImage(named: "nought.png")), for: .normal)
                playerMove = "x"
                moves += 1
                nextMove.image = tileX
                if let currentTitle = sender.currentTitle {
                    movesO.append(currentTitle)
                }
                if movesO.count >= 3 {
                    determineWinner(player: "o", playerMoves: movesO)
                }
            default:
                print("Cannot make a move")
            }
        }
        
        print("\(sender.currentTitle)")
    }

}

