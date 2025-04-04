//
//  GameResult.swift
//  MovieQuiz
//
//  Created by Дария Исина on 03.04.2025.
//

import Foundation
import UIKit

struct GameResult {
    let correct: Int
    let total: Int
    let date: Date
    
    func bestResult(_ another: GameResult) -> Bool {
        correct >= another.correct
    }
}
