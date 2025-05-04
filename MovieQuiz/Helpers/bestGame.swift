//
//  bestGame.swift
//  MovieQuiz
//
//  Created by Дария Исина on 04.04.2025.
//

import Foundation

extension GameResult {
    var accuracy: Double {
        guard total != 0 else { return 0 }
        return Double(correct) / Double(total) // точность одной игры: правильные / все вопросы
    }
}
