//
//  PersonalPageViewController.swift
//  Instagram
//
//  Created by yucian huang on 2024/3/5.
//

import UIKit
import AVKit
import PhotosUI

class GreetingPageViewController: UIViewController & UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var user: User?

    // maybe an employeeNumber  ?
    @IBOutlet weak var idLabel: UILabel!  // account
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }
    
    @IBAction func selectPic(_ sender: Any) {
        
        let controller = UIImagePickerController()
        controller.sourceType = .photoLibrary
        controller.delegate = self
        present(controller, animated: true)
    }
    
    
    
//    @IBSegueAction func passUserData(_ coder: NSCoder) -> GreetingPageViewController? {
//        return GreetingPageViewController(coder: coder)
//    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as? UIImage
        imageView.image = image
        dismiss(animated: true)
    }
    
    @IBAction func takePhoto(_ sender: Any) {
        
        let controller = UIImagePickerController()
    }
    
    @IBAction func updatePost(_ sender: Any) {
    }
}
