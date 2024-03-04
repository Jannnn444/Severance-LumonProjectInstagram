//
//  pickerViewController.swift
//  Instagram
//
//  Created by yucian huang on 2024/3/5.
//
import UIKit
import PhotosUI

class PickerViewController: UIViewController, PHPickerViewControllerDelegate {
    
    @IBOutlet var imageViews: [UIImageView]!
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        
        picker.dismiss(animated: true)
        
        let itemProviders = results.map(\.itemProvider)
        if let itemProvider = itemProviders.first, itemProvider.canLoadObject(ofClass: UIImage.self) {
            let previousImage = self.imageViews.first?.image
            itemProvider.loadObject(ofClass: UIImage.self) { [weak self] (image, error) in
                DispatchQueue.main.async {
                    guard let self = self, let image = image as? UIImage, self.imageViews.first?.image == previousImage else { return }
                    self.imageViews.first?.image = image
                }
            }
        }
    }
    
    @IBAction func pressedButton(_ sender: Any) {
        // Handle button press if needed
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup code if needed
    }
}
