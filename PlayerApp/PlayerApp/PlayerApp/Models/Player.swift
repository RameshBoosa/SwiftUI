//
//  Player.swift
//  PlayersApp
//
//  Created by Ramesh Boosa on 17/07/21.
//

import Foundation
import UIKit
import SwiftUI
import Combine

struct Player: Identifiable {
    var id: UUID = UUID()
    var name: String = " "
    var imageName: String = ""
    var team: Team = hawks
    var age: Int = 30
    var height: String = ""
    var weight: Int = 6
    var rating: Double = 1.0
    var isSelected: Bool = false
}

struct Team {
    var name: String
    var color: Color
    var imageName: String
}

let goldenState = Team(name: "goldenState",color: Color(red: 0.965, green: 0.761, blue: 0.275), imageName: "gs")
let toronto = Team(name: "toronto",color: Color(red: 0.718, green: 0.165, blue: 0.263), imageName: "tr")
let hawks = Team(name: "hawks",color: Color(red: 0.718, green: 0.165, blue: 0.263), imageName: "hawks")
let rocks = Team(name: "rocks", color: Color(red: 0.965, green: 0.165, blue: 0.263), imageName: "hawks")



let players = [
    Player(name: "Andre Iguodala", imageName: "andre", team: goldenState, age: 35, height: "6' 6\"", weight: 215),
    Player(name: "Danny Green", imageName: "danny", team: toronto, age: 31, height: "6' 6\"", weight: 215),
    Player(name: "DeMarcus Cousins", imageName: "demarc", team: goldenState, age: 28, height: "6' 11\"", weight: 270),
    Player(name: "Draymond Green", imageName: "dray", team: goldenState, age: 29, height: "6' 7\"", weight: 230),
    Player(name: "Kawhi Leonard", imageName: "kawhi", team: toronto, age: 27, height: "6' 7\"", weight: 230),
    Player(name: "Klay Thompson", imageName: "klay", team: goldenState, age: 29, height: "6' 7\"", weight: 215),
    Player(name: "Kyle Lowry", imageName: "kyle", team: toronto, age: 33, height: "6' 1\"", weight: 196),
    Player(name: "Marc Gasol", imageName: "marc", team: toronto, age: 34, height: "7' 1\"", weight: 255),
    Player(name: "Pascal Siakam", imageName: "siak", team: toronto, age: 25, height: "6' 9\"", weight: 230),
    Player(name: "Stephen Curry", imageName: "steph", team: goldenState, age: 31, height: "6' 3\"", weight: 190)
]

let extraPlayers = [
    Player(name: "Trae Young", imageName: "trae", team: hawks, age: 35, height: "6' 6\"", weight: 215),
    Player(name: "John Collins", imageName: "john", team: hawks, age: 31, height: "6' 1\"", weight: 250),
    Player(name: "Bogdan Bogdanovic", imageName: "bogdan", team: hawks, age: 28, height: "6' 2\"", weight: 220),
    Player(name: "Clint Capela", imageName: "clint", team: hawks, age: 31, height: "6' 5\"", weight: 215),
    Player(name: "De'andre Hunter", imageName: "hunter", team: hawks, age: 28, height: "6' 4\"", weight: 230),
]

let teams = Dictionary(grouping: extraPlayers) { $0.team.name }

class PlayerStore : ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    var newPlayers: [Player] {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        let player1 = Player(name: "Ramesh Boosa", imageName: "hunder", team: hawks, age: 25, height: "5'9\"", weight: 200, rating: 2, isSelected: true)
        let player2 = Player(name: "Ramesh Naidu", imageName: "hunder", team: hawks, age: 26, height: "6'9\"", weight: 220, rating: 3, isSelected: false)

        newPlayers = [player1, player2]
    }
    
    func addPlayerToList(player: Player) {
        newPlayers.append(player)
    }
}


