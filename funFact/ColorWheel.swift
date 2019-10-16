//
//  ColorWheel.swift
//  funFact
//
//  Created by Javier Porras jr on 10/15/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

struct ColorWheel{
    let colorArray = [UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0),
                      UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0),
                      UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0),
                      UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0),
                      UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0),
                      UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0),
                      UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0)
    ]
    
    func randomColor()->UIColor{
        let unsignedArrayCount = UInt32(colorArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        return colorArray[randomNumber]
    }
}
