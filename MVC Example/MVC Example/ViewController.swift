//
//  ViewController.swift
//  MVC Example
//
//  Created by Арсентий Халимовский on 10.05.2023.
//

import UIKit

// Result of this small programm - user can tap on the any area of the screen and the label will change it's text into Person Full Name
// The whole project made without Storyboard. Only in code. That's why we can see "Assembling of MVC"

// Our View-Controller Block
class GreetingViewController: UIViewController {
    
    // MARK: - Public Properties
    
    // Instance of our Model
    var person: Person!
    
    // Custom buttons
    let showGreetingButton = UIButton()
    let greetingLabel = UILabel()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add custom action to the button
        showGreetingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    // MARK: - Public Methods
    
    // Our custom action for button
    // Here we use an instance of our Model to get it's properties
    @objc func didTapButton() {
        let greeting = "Hello" + " " + person.name + " " + person.surname
        greetingLabel.text = greeting
    }
    
    // Layout code goes here

    // MARK: - Public Methods
    
    // Assembling of MVC
    func getModel() {
        // get property of Person
        let model = Person(name: "Tim", surname: "Cook")
        // define our View
        let view = GreetingViewController()
        // assigne person property to model
        view.person = model
    }
}

