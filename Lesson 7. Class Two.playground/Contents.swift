import UIKit

//// Класи: Баскетбол, футбол, теніс, пінг понг, волейбол, шахи, покер, фехтування
//Функції: 3+
//Атрибути: 5+
//Зовнішні функції: startGame(team: [Athlete], with: Equipment)


class TeamSport {
    let teamName: String
    let players: [String]
    let coach: String
    let playerGender:String
    let replacementPlayer: String
    
    init( teamName: String, players: [String],  coach: String,  playerGender: String,replacementPlayer:String ) {
        self.teamName = teamName
        self.players = players
        self.coach = coach
        self.playerGender = playerGender
        self.replacementPlayer = replacementPlayer
        
    }
    func startGame(){
        
    }
    
    func goalOfTheGame(){
        
    }
    
    private func printCourtDimensions() {
            print("Размеры площадки: ")
        }
    
}

class Basketball: TeamSport {
    
    override func startGame() {
        print("игра начинается в 8:00")
    }
    
    override func goalOfTheGame() {
        print("забросить мячь в кольцо")
    }
    
}

class Football: TeamSport {
    override func startGame() {
        print("игра начинается в 17:00")
    }
    
    override func goalOfTheGame() {
        print("Забить в ворота")
    }
    
}

class Volleyball: TeamSport {
    override func startGame() {
        print("игра начинается в 16:30")
    }
    
    override func goalOfTheGame() {
        print("заставить противника пропустить мячик")
    }
}

class SoloGame {
    let playerName: String
    let opponentName: String
    let playerGender: String
    let duration: Int
    private var score: Int
      
    init( playerName: String,opponentName: String, duration: Int, score: Int, playerGender: String) {
          self.opponentName = opponentName
          self.playerName = playerName
          self.duration = duration
          self.score = score
          self.playerGender = playerGender
      }
    
    func startGame() {
        
    }
    func endGame() {
        
    }
    func goalOfTheGame(){
        
    }
}


class Tennis: SoloGame {
}

class Ping_Pong: SoloGame {
    
}

class Checkers: SoloGame {
    
}

class Poker: SoloGame {
    
}
class Fencing:SoloGame{
    
}

enum Equipment {
    case ball
    case draughts
    case sword
    case cards
    
}

let basketball = Basketball(teamName: "Винни", players: ["Эндри,Вильям,Виктор"], coach: "Анастасия", playerGender: "мужчины", replacementPlayer: "Игорь")
let football = Football(teamName: "Dinamo", players: ["Sheva", "Vitaly", "Fedor"], coach: "Dima", playerGender: "woman", replacementPlayer: "Igor")
let volleyball = Volleyball(teamName: "Rizozo", players: ["Player1", "Player2"], coach: "CoachName", playerGender: "Male", replacementPlayer: "SubstitutePlayer")
let tennis = Tennis(playerName: "Player1", opponentName: "Player2", duration: 120, score: 2, playerGender: "Female")
let pingPong = Ping_Pong(playerName: "Player1", opponentName: "Player2", duration: 30, score: 11, playerGender: "Male")
let checkers = Checkers(playerName: "Player1", opponentName: "Player2", duration: 45, score: 1, playerGender: "Female")
let poker = Poker(playerName: "Player1", opponentName: "Player2", duration: 180, score: 500, playerGender: "Male")
let fencing = Fencing(playerName: "Player1", opponentName: "Player2", duration: 60, score: 5, playerGender: "Female")




func startGame(team: [String], with: Equipment) {
    
}

startGame(team: basketball.players, with: .ball)
