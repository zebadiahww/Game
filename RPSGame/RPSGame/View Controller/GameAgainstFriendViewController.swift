//
//  GameAgainstFriendViewController.swift
//  RPSGame
//
//  Created by Bethany Wride on 10/23/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

import UIKit

class GameAgainstFriendViewController: UIViewController {
    
    @IBOutlet weak var playerLabelForZeb: UILabel!
    @IBOutlet weak var playerImageView: UIImageView!
    
// MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rockButtonTapped(_ sender: Any) {
        playerImageView.image = UIImage(named: "rock")
        playerLabelForZeb.text = "R O C K !"
    }
    
    @IBAction func paperButtonTapped(_ sender: Any) {
        playerImageView.image = UIImage(named: "paper")
        playerLabelForZeb.text = "P A P E R !"
    }
    
    @IBAction func scissorButtonTapped(_ sender: Any) {
        playerImageView.image = UIImage(named: "scissors")
        playerLabelForZeb.text = "S C I S S O R !"
    }
    
}
