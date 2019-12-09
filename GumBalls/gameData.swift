//
//  gameControl.swift
//  GumBalls
//
//  Created by apple on 2019/11/26.
//  Copyright © 2019 andy. All rights reserved.
//

import SpriteKit
import GameplayKit

class GumBall {
    var life:Int
    var magic:Int
    var physicAttack:Int
    var magicAttack:Int
    init(life:Int,magic:Int,physicAttack:Int,magicAttack:Int) {
        self.life = life
        self.magic = magic
        self.magicAttack = magicAttack
        self.physicAttack = physicAttack
    }
}

class Monster {
    var life:Int
    var attack:Int
    var index:Int!
    init(life:Int,attack:Int) {
        self.life = life
        self.attack = attack
    }
}

class floor{
    var coord:CGPoint
    var eachFloor:SKSpriteNode!
    var open:Bool
    var life:SKSpriteNode!
    var lifeNum:SKLabelNode!
    var attack:SKSpriteNode!
    var attackNum:SKLabelNode!
    init(coord:CGPoint,open:Bool){
        self.coord = coord
        self.open = open
    }
}

var allFloor = [floor]()
var GumBallData = GumBall(life: 50, magic: 30, physicAttack: 3, magicAttack: 2)
var allMonster = [Monster]()

var GumBallImage:SKSpriteNode!
var gameStatus:GameStatus = .idle
var attackGum:SKSpriteNode!
var attackNumGum:SKLabelNode!
var lifeGum:SKSpriteNode!
var lifeNumGum:SKLabelNode!
var magicAttackGum:SKSpriteNode!
var magicAttackNumGum:SKLabelNode!
var magicGum:SKSpriteNode!
var magicNumGum:SKLabelNode!

let winner = SKLabelNode(fontNamed: "Chalkduster")
