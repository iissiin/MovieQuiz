//
//  QuestionFactoryProtocol.swift
//  MovieQuiz
//
//  Created by Дария Исина on 31.03.2025.
//

import Foundation
import UIKit

protocol QuestionFactoryProtocol {
    func requestNextQuestion() -> QuizQuestion?
}
