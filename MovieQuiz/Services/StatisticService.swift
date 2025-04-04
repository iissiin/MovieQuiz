import Foundation

final class StatisticService: StatisticServiceProtocol {
    
    private enum Keys: String {
        case correct
        case bestGame
        case gamesCount
        case bestGameCorrect
        case bestGameTotal
        case bestGameDate
    }
    
    private let storage: UserDefaults = .standard
    
    var gamesCount: Int {
        get {
            storage.integer(forKey: Keys.gamesCount.rawValue)
        } set {
            storage.set(newValue, forKey: Keys.gamesCount.rawValue)
        }
    }
    
    var bestGame: GameResult {
        get {
            let correct = storage.integer(forKey: Keys.bestGameCorrect.rawValue)
            let total = storage.integer(forKey: Keys.bestGameTotal.rawValue)
            let date = storage.object(forKey: Keys.bestGameDate.rawValue) as? Date ?? Date()

            return GameResult(correct: correct, total: total, date: date)
        } set {
            storage.set(newValue.correct, forKey: "bestGameCorrect")
            storage.set(newValue.total, forKey: "bestGameTotal")
            storage.set(newValue.date, forKey: "bestGameDate")        }
    }
    
    var totalAccuracy: Double {
        let correct = storage.integer(forKey: Keys.correct.rawValue)
        let totalQuestions = gamesCount * 10
        
        guard totalQuestions != 0 else { return 0 }
        
        return (Double(correct) / Double(totalQuestions)) * 100
    }
    
    func store(correct count: Int, total amount: Int) {
        let currentCorrect = storage.integer(forKey: Keys.correct.rawValue)
        storage.set(currentCorrect + count, forKey: Keys.correct.rawValue)
        
        gamesCount += 1
        
        let newGame = GameResult(correct: count, total: amount, date: Date())
        
        if newGame.accuracy > bestGame.accuracy {
            bestGame = newGame
        }
    }
}
    
    



