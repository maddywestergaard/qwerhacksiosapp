//
//  AddItemViewController.swift
//  qwerhacks
//
//  Created by Madison Westergaard on 1/25/20.
//  Copyright © 2020 Madison Westergaard. All rights reserved.
//

import Foundation

import UIKit

class AddItemViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var contactField: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func didTapUploadImage(_ sender: Any) {
        let ImagePicker = UIImagePickerController()
        ImagePicker.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        ImagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(ImagePicker, animated: true, completion: nil)
    }

   func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    
    guard case let image.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
        fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
    }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTapSubmit(_ sender: Any) {
        
        // upload data from location, contact text fields and image view to firebase
        
    }
    
}
