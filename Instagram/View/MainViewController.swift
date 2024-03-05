//
//  MainViewController.swift
//  Instagram
//
//  Created by yucian huang on 2024/3/5.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var signInNameLabel: UITextField!
    @IBOutlet weak var signInPasswordLabel: UITextField!
    
  
    var userLoginData: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBSegueAction func RegisterSegue(_ coder: NSCoder) -> RegisterViewController? {
        return RegisterViewController(coder: coder)
    }
    
    
    // MARK: Show the Login Success or Not
    

    @IBAction func showSuccessMesag(_ sender: Any) {
        
       
        
        // Create the alert controller
        let alertController = UIAlertController(title: "Login Successfully", message: "Another work day, please have fun.", preferredStyle: .alert)
        
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
    
    
// note:
// if the login page didn't segue with the tab bar controller, the welcomePage can show as a new page, but then the other related tab page with WelcomePage can't link. So far seems the navigation cannot link to another navigation this still need to investigate as TODO.

// Now all pages link with tabBarViewController, so if i link the welcome with the login button will be only pop-up window. swipe off will stay at same login page might be awkward. Better to show successful alert, and the page auto matically? change to a "Login Mode, Log out? "

// could try to use a custom content ? maybe the vertical item so we can switch.
// k no Vertical stackview, it's so bad



 


//    @IBSegueAction func loginSegue(_ coder: NSCoder) -> GreetingPageViewController? {
//        return GreetingPageViewController(coder: coder)
//        
//        
//    }
//    
    




// NOTE: After login, show " log out? "
