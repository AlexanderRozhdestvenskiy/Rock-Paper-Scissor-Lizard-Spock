//
//  Sign.swift
//  Rock, Paper, Scissor, Lizard, Spock
//
//  Created by Alexander Rozhdestvenskiy on 05.08.2020.
//  Copyright © 2020 evilroot. All rights reserved.
//

import Foundation

enum Sign {
    case rock
    case paper
    case scissor
    case lizard
    case spock
}

func random() -> Sign {
    let sign = Int.random(in: 0...4)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else if sign == 2 {
        return .scissor
    } else if sign == 3 {
        return .lizard
    } else {
        return .spock
    }
}
