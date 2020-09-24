//
//  ViewController.swift
//  Rock, Paper, Scissor, Lizard, Spock
//
//  Created by Alexander Rozhdestvenskiy on 05.08.2020.
//  Copyright © 2020 evilroot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sheldonImage: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissor: UIButton!
    @IBOutlet weak var lizard: UIButton!
    @IBOutlet weak var spock: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(sos: .start)
        rock.layer.cornerRadius = 12
        rock.layer.borderColor = UIColor.black.cgColor
        rock.layer.borderWidth = 4
        rock.layer.backgroundColor = UIColor.red.cgColor
        // Do any additional setup after loading the view.
    }


    func updateUI(sos: GameState) {
        if sos == .start {
            sheldonImage.text = "🤖"
            playAgain.isHidden = true
            message.text = "Start Game!"
            rock.isHidden = false
            paper.isHidden = false
            scissor.isHidden = false
            lizard.isHidden = false
            spock.isHidden = false
        } else if sos == .draw {
            message.text = "Draw!"
            playAgain.isHidden = false
        } else if sos == .lose {
            message.text = "You Lose!"
            playAgain.isHidden = false
        } else {
            message.text = "You Win!"
            playAgain.isHidden = false
        }
    }
    
    @IBAction func playerRock(_ sender: UIButton) {
        updateUI(sos: game(player: .rock, sheldon: random()))
        paper.isHidden = true
        scissor.isHidden = true
        lizard.isHidden = true
        spock.isHidden = true
    }
    
    @IBAction func playerPaper(_ sender: UIButton) {
        updateUI(sos: game(player: .paper, sheldon: random()))
        rock.isHidden = true
        scissor.isHidden = true
        lizard.isHidden = true
        spock.isHidden = true
    }
    
    @IBAction func playerScissor(_ sender: UIButton) {
        updateUI(sos: game(player: .scissor, sheldon: random()))
        paper.isHidden = true
        rock.isHidden = true
        lizard.isHidden = true
        spock.isHidden = true
    }
    
    @IBAction func playerLizard(_ sender: UIButton) {
        updateUI(sos: game(player: .lizard, sheldon: random()))
        paper.isHidden = true
        scissor.isHidden = true
        rock.isHidden = true
        spock.isHidden = true
    }
    
    @IBAction func spock(_ sender: UIButton) {
        updateUI(sos: game(player: .spock, sheldon: random()))
        paper.isHidden = true
        scissor.isHidden = true
        lizard.isHidden = true
        rock.isHidden = true
    }
    
    
    @IBAction func play(_ sender: UIButton) {
        updateUI(sos: .start)
    }
}

