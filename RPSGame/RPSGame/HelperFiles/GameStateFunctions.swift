//
//  User.swift
//  RPSGame
//
//  Created by AlphaDVLPR on 10/23/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

import Foundation
import GameplayKit

//MARK: - Game Results
enum gameResult {
    case start, win, lose, draw
}

//MARK: - Sign Strings
enum Sign {
    case rock, paper, scissors
    
    var chosenSign: String {
        switch self {
        case .rock:
            return "rock"
        case .paper:
            return "paper"
        case .scissors:
            return "scissors"
        }
    }
    
    //MARK: - Turn Function
    func turn(_ opponent: Sign) -> gameResult {
        switch self {
        case .rock:
            switch opponent {
            case .rock:
                return gameResult.draw
            case .paper:
                return gameResult.lose
            case .scissors:
                return gameResult.win
            }
        case .paper:
            switch opponent {
            case .rock:
                return gameResult.win
            case .paper:
                return gameResult.draw
            case .scissors:
                return gameResult.lose
            }
        case .scissors:
            switch opponent {
            case .rock:
                return gameResult.lose
            case .paper:
                return gameResult.win
            case .scissors:
                return gameResult.draw
            }
        }
    }
}

//MARK: - Random Generator Function
let random = GKRandomDistribution(lowestValue: 0, highestValue: 2) //Random Generator from 0-2
func randomGenerator() -> Sign {
    
    let sign = random.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}
