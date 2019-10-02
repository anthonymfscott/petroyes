//
//  Character.swift
//  Petroyes
//
//  Created by Tony Scott enfant Depaepe on 02/10/2019.
//  Copyright © 2019 anthonymfscott. All rights reserved.
//

import Foundation

class Character {
    var name: String?
    var job = ""
    var hp = 0
    var strength = 0
    var description = ""
    
    func giveName() {
        print("Choose a name for your \(job):")
        if let name = readLine() {
            self.name = name
            Game.existingCharacterNames.append(name)
        }
    }
    
    func describe() {
        if let name = name {
            print("\n\(name)", terminator: "")
        }
        print("\n\(job.uppercased())"
            + "\nhealth points: \(hp)"
            + "\nstrength: \(strength)")
        if Game.existingCharacterNames.count == 0 {
            print(description)
        }
    }
    
    func action() {
        
    }
}

// CHARACTER'S SUBCLASSES:
class Mercenary: Character {
    override init() {
        super.init()
        job = "mercenary"
        hp = 100
        strength = 10
        description = "Mercenaries are very tough, and best at close-range fighting using all types of swords."
    }
}

class Arbalester: Character {
    override init() {
        super.init()
        job = "arbalester"
        hp = 90
        strength = 12
        description = "Arbalesters use their crossbows to shoot powerful bolts from a distance."
    }
}

class Pyromaniac: Character {
    override init() {
        super.init()
        job = "pyromaniac"
        hp = 80
        strength = 15
        description = "Pyromaniacs just love fire... maybe a little bit too much sometimes."
    }
}

class Magus: Character {
    override init() {
        super.init()
        job = "magus"
        hp = 70
        strength = 5
        description = "Magi aren't very good at fighting, but excel at healing wounds using the power of their staffs."
    }
    
    override func action() {
        
    }
}