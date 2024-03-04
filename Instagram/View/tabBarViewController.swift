//
//  tabBarViewController.swift
//  Instagram
//
//  Created by yucian huang on 2024/3/5.
//

import UIKit

class tabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
    
            // Hide the navigation bar on the this view controller
            self.navigationController?.setNavigationBarHidden(true, animated: animated)
        }
    
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
    
            // Show the navigation bar on other view controllers
            self.navigationController?.setNavigationBarHidden(false, animated: animated)
        }
    
    }
    
    
    

