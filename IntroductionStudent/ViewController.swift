//
//  ViewController.swift
//  IntroductionStudent
//
//  Created by G Vi on 2/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var First_text_field: UITextField!
    
    @IBOutlet weak var Last_text_field: UITextField!
    
    @IBOutlet weak var School_text_field: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    
    @IBOutlet weak var numberPetsLabel: UILabel!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
           numberPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
            // Lets us choose the title we have selected from the segmented control
            // In our example that is whether it is first, second, third or forth
            let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
            
            // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
            let introduction = "My name is \(First_text_field.text!) \(Last_text_field.text!) and I attend \(School_text_field.text!) I am currently in my \(year!) year and I own \(numberPetsLabel.text!)dogs. It is \(morePetsSwitch.isOn) that I want more pets."
            
            print(introduction)
        
               
               // Creates the alert where we pass in our message, which our introduction.
               let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
               // A way to dismiss the box once it pops up
               let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
               
               // Passing this action to the alert controller so it can be dismissed
               alertController.addAction(action)
               
               present(alertController, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }


}

