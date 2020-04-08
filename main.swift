//
//  main.swift
//  Wyvern Quest
//
//  Created by Seth Camara on 11/16/19.
//  Copyright © 2019 Seth Camara. All rights reserved.
//

import Foundation

class Hero {
    var health: Int
    let defense: Int
    
    init(health: Int, defense: Int) {
        self.health = health
        self.defense = defense
   }
    
    func currentHP() {
        print("Current HP:")
    }
}

var playerOne = Hero(health: 100, defense: 3)
playerOne.currentHP()
print(playerOne.health)

let menu = readLine()

var map = ["0,X,X,X,X,X,X,X,X,X,X"]
var map1 = ["X,X,X,X,X,X,X,X,X,X,X"]
var map2 = ["X,X,X,X,X,X,X,X,M,X,X"]
var map3 = ["X,X,X,X,X,X,X,X,X,X,X"]
var map4 = ["X,X,X,X,X,H,X,X,X,X,X"]
var map5 = ["X,X,X,X,X,X,X,X,X,X,M"]
var map6 = ["X,X,X,X,X,X,X,X,X,X,X"]
var map7 = ["X,M,X,X,X,X,X,X,X,X,X"]
var map8 = ["X,X,X,X,X,X,X,X,X,X,X"]

if menu == "Map" {
   
    print(map)
    print(map1)
    print(map2)
    print(map3)
    print(map4)
    print(map5)
    print(map6)
    print(map7)
    print(map8)
    
} else if menu == "Items" {
    print ("You have no items")
}

print("Would you like to continue wandering?")
var playerResponse = readLine()
if playerResponse == "Y" {
print ("North, South, East or West? How many Paces?")
}
var number = Int(arc4random_uniform(51))
func initiateBattle () {
    print("You've encountered a foe with \(number) health")
    let initalEnemyHealth = number
    while number > 0 {
    print("Foe has \(number) health")
    print("Monster dealt \(number/2-playerOne.defense) damage")
    print("Attack or run away?")
    let playerResponseTwo = readLine()
    if playerResponseTwo == "Attack" && playerOne.health % 2 != 0 || number % 2 != 0 {
        number -= 10
        playerOne.health -= number/2-playerOne.defense
        print("Monster has \(number) HP")
        if number <= 0 {
            print("You Won! Player gained \(initalEnemyHealth) experience.")
            break
        }
    } else if playerResponseTwo == "Attack" && playerOne.health % 2 == 0 && number % 2 == 0 {
        number = 0
        print ("Monster has \(number-number) HP, a critical hit")
        if number <= 0 {
            print("You Won! Player gained \(initalEnemyHealth) experience.")
            break
        }
    } else {
            print("Ran Away")
            break
    }
    }
    
}
let playerChoice = readLine()
let pacesForward = Int(arc4random_uniform(5))
let playerPacesForward = Int(readLine()!)
if playerPacesForward == pacesForward {
	initiateBattle()
} else {
        print ("You got lucky! No monsters here!")
    }
//func updateMap() {
    //}
