//
//  ViewController.swift
//  funFact
//
//  Created by Javier Porras jr on 10/15/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let funFactLabel: UILabel = {
       let label = UILabel()
        
        return label
    }()
    let funFactButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    //let factBook = FactBook()
    //let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //funFactLabel.text = factBook.randomFact()
    }
    
    @objc func showFunFact() {
        //println("You pressed me")
        //var randomColor = colorWheel.randomColor()
        
//        view.backgroundColor = randomColor
//        funFactButton.tintColor = randomColor
//        funFactLabel.text = factBook.randomFact()
    }

}

