//
//  FactBook.swift
//  funFact
//
//  Created by Javier Porras jr on 10/15/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import Foundation

struct FactBook{
    let factsArray = [
        "Ants stretch when they wake up in the morning",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually mostly made of silver",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "Some penguins can leap 2-3 meters out of the water.",
        "The state of Florida is bigger than England.",
        "On average, it takes 66 days to form a new habit.",
        "Mamoths still walked the earth when the Great Pyramid ws being built."
    ]
    
    func randomFact()->String{
        // var randomNumber = Int(arc4random_uniform(UInt32(factsArray.count)))
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        return factsArray[randomNumber]
    }
}
