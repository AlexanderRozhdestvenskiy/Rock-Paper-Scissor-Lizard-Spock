//
//  GameState.swift
//  Rock, Paper, Scissor, Lizard, Spock
//
//  Created by Alexander Rozhdestvenskiy on 05.08.2020.
//  Copyright © 2020 evilroot. All rights reserved.
//

import Foundation

enum GameState {
    case start
    case win
    case draw
    case lose
}

func game(player: Sign, sheldon: Sign) -> GameState {
    if player == .rock && sheldon == .lizard || sheldon == .scissor {
        return .win
    } else if player == .rock && sheldon == .paper || sheldon == .spock {
        return .lose
    } else if player == .rock && sheldon == .rock {
        return .draw
    } else if player == .paper && sheldon == .rock || sheldon == .spock {
        return .win
    } else if player == .paper && sheldon == .lizard || sheldon == .scissor {
        return .lose
    } else if player == .paper && sheldon == .paper {
        return .draw
    } else if player == .scissor && sheldon == .paper || sheldon == .lizard {
        return .win
    } else if player == .scissor && sheldon == .rock || sheldon == .spock {
        return .lose
    } else if player == .scissor && sheldon == .scissor {
        return .draw
    } else if player == .lizard && sheldon == .paper || sheldon == .spock {
        return .win
    } else if player == .lizard && sheldon == .rock || sheldon == .scissor {
        return .lose
    } else if player == .lizard && sheldon == .lizard {
        return .draw
    } else if player == .spock && sheldon == .rock || sheldon == .scissor {
        return .win
    } else if player == .spock && sheldon == .paper || sheldon == .lizard {
        return .lose
    } else {
        return .draw
    }
}
