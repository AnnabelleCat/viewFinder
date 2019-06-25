//
//  AddPhotoViewController.swift
//  anikaViewFinder
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Anika. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    @IBAction func savePhoto(_ sender: UIButton) {
    }
    
    @IBAction func Camera(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func photoLibrary(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func Albums(_ sender: UIButton) {
    }
    
    
    @IBOutlet weak var Caption: UITextField!

     @IBOutlet weak var imageDisplay: UIImageView!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage
            ] as? UIImage {
            imageDisplay.image = selectedImage
            
            imagePicker.dismiss(animated: true, completion: nil)
    }
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
