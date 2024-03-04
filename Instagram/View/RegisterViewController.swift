//
//  RegisterViewController.swift
//  Instagram
//
//  Created by yucian huang on 2024/3/5.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSegments: UISegmentedControl!
    @IBOutlet weak var setAccTextField: UITextField!
    @IBOutlet weak var setPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func CreateAccButton(_ sender: UIButton) {
        
        
        if nameTextField.text?.isEmpty ?? true || genderSegments.selectedSegmentIndex == UISegmentedControl.noSegment || setAccTextField.text?.isEmpty ?? true || setPasswordTextField.text?.isEmpty ?? true {
            
            
            
            // Create the alert controller
            let alertController = UIAlertController(title: "Failed", message: "Please fill in complete informations.", preferredStyle: .alert)
            
            // Create the actions
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                UIAlertAction in
                NSLog("OK Pressed")
            }
            
            // HERE WE NEED CANCEL
            
           let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) {
                 UIAlertAction in
                 NSLog("Cancel Pressed")
             }
    
    
            
            // Add the actions
            alertController.addAction(okAction)
            alertController.addAction(cancelAction)
            
            // Present the controller
            self.present(alertController, animated: true, completion: nil)
            
            
            
        } else {
            
            // Create the alert controller
            let alertController = UIAlertController(title: "Wonderful!", message: "You joined our Lumon Severance Project. \nFabulous Life's Coming.", preferredStyle: .alert)
            
            // Create the actions
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                UIAlertAction in
                NSLog("OK Pressed")
            }
            
            
            // Add the actions
            alertController.addAction(okAction)
            
            // Present the controller
            self.present(alertController, animated: true, completion: nil)
            
        }
        
        
    }
}
