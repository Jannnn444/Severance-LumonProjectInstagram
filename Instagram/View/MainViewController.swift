//
//  MainViewController.swift
//  Instagram
//
//  Created by yucian huang on 2024/3/5.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBSegueAction func RegisterSegue(_ coder: NSCoder) -> RegisterViewController? {
        return RegisterViewController(coder: coder)
    }
    
    @IBSegueAction func loginSegue(_ coder: NSCoder) -> GreetingPageViewController? {
        return GreetingPageViewController(coder: coder)
    }
    
    
}
