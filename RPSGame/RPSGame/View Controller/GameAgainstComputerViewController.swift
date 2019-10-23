//
//  GameAgainstComputerViewController.swift
//  RPSGame
//
//  Created by Bethany Wride on 10/23/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

import UIKit

class GameAgainstComputerViewController: UIViewController {
// MARK: - Properties
    var playerSign: Sign?
    
// MARK: - Outlets
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var winLoseLabel: UILabel!
    
// MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
// MARK: - Actions
    @IBAction func rockButtonTapped(_ sender: Any) {
        playerImageView.image = UIImage(named: "rock")
        setComputerImage()
        playerSign = .rock
        setComputerImage()
    }
    @IBAction func paperButtonTapped(_ sender: Any) {
        playerImageView.image = UIImage(named: "paper")
        setComputerImage()
        playerSign = .paper
        setComputerImage()
    }
    @IBAction func scissorsButtonTapped(_ sender: Any) {
        playerImageView.image = UIImage(named: "scissors")
        setComputerImage()
        playerSign = .scissors
        setComputerImage()
    }

// MARK: - Custom Methods
    func setComputerImage() {
        let sign = randomGenerator()
        if sign.chosenSign == "rock" {
            computerImageView.image = UIImage(named: "rock")
        } else if sign.chosenSign == "paper" {
            computerImageView.image = UIImage(named: "paper")
        } else {
            computerImageView.image = UIImage(named: "scissors")
        }
        guard let playerSign = playerSign else { return }
        let result = sign.turn(playerSign)
        winOrLose(result: result)
    }
    
    func winOrLose(result: gameResult) {
        switch result {
        case .win:
            winLoseLabel.text = "You Won!"
        case .lose:
            winLoseLabel.text = "You Lost :("
        case .draw:
            winLoseLabel.text = "It's a Draw - Try Again!"
        default:
            print("Error")
        }
    } // End of function
} // End of class
