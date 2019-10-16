//
//  ViewController.swift
//  funFact
//
//  Created by Javier Porras jr on 10/15/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //funFactLabel.text = factBook.randomFact()
        showFunFact()
        setupViews()
    }
    let didYouKnowLabel: UILabel = {
        let label = UILabel()
        //label.backgroundColor = .red
        label.font = UIFont(name: "HelveticaNeue-Light", size: 22) //.systemFont(ofSize: 22, weight: UIFont.Weight.bold)
        label.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5)
        label.text = "Did you know?"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let funFactLabel: UILabel = {
       let label = UILabel()
        //label.backgroundColor = .red
        label.font = UIFont(name: "HelveticaNeue-Light", size: 24) //.systemFont(ofSize: 24, weight: UIFont.Weight.bold)
        label.textColor = .white
        label.numberOfLines = 0
        label.text = "You are born with 300 bones; by the time you are an adult you will have 206."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var funFactButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Show another fun fact", for: UIControl.State.normal)
        //button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        //button.tintColor = UIColor.gray
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 18) //.systemFont(ofSize: 18, weight: UIFont.Weight.bold)
        button.addTarget(self, action: #selector(showFunFact), for: UIControl.Event.touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func showFunFact() {
        let randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactButton.color(is: randomColor)
        funFactLabel.text = factBook.randomFact()
    }
    
    func setupViews(){
        view.addSubviews(didYouKnowLabel, funFactLabel, funFactButton)
        
        didYouKnowLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 36).isActive = true
        didYouKnowLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        didYouKnowLabel.widthAnchor.constraint(equalToConstant: 180).isActive = true
        didYouKnowLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        funFactLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 36).isActive = true
        funFactLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 138).isActive = true
        funFactLabel.widthAnchor.constraint(equalToConstant: 216).isActive = true
        funFactLabel.heightAnchor.constraint(equalToConstant: 160).isActive = true
        
        funFactButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 36).isActive = true
        funFactButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -59).isActive = true
        funFactButton.widthAnchor.constraint(equalToConstant: 216).isActive = true
        funFactButton.heightAnchor.constraint(equalToConstant: 61).isActive = true
    }

}

extension UIButton{
    func color(is color: UIColor){
        self.setTitleColor(color, for: .normal)
    }
}

extension UIView{
    func addSubviews(_ views: UIView...){
        for view in views{
            self.addSubview(view)
        }
    }
}
