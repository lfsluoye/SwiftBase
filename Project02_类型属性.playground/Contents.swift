//: Playground - noun: a place where people can play

import UIKit
//Type property
Int.max
Int.min

class Player{
    var name: String
    var score = 0
    static var highestScore = 0
    
    init(name: String){
        self.name = name
    }
    
    func play(){
        let score = random()%100
        print("\(name) play and got \(score) scores.")
        
        self.score += score
        print("Total score of \(name) is \(self.score)")
        
        if self.score > Player.highestScore {
            Player.highestScore = self.score
        }
        print("Highest score is \(Player.highestScore).")
    }
}

let player1 = Player(name: "player1")
let player2 = Player(name: "player2")
player1.play()
player2.play()