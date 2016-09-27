//
//  ViewController.swift
//  FoodTracker
//
//  Created by Jasdip on 2016-09-26.
//  Copyright © 2016 Jasdip. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //notify through delegate callbacks
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        //set label when the user is done typing
        mealNameLabel.text = nameTextField.text;
    }
    
    //Mark: ACTIONS
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
    @IBAction func selectImageFromPhotoGallery(sender: UITapGestureRecognizer) {
        nameTextField .resignFirstResponder()
        //UI image picker is a view controller that lets a user pick media from their photo library
        let imagePickerController = UIImagePickerController()
        
        //only alllow photos to be picked, not taken
        imagePickerController.sourceType = .PhotoLibrary
        
        //make sure view controller is notified when the user picks an image
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        //dismiss the picker if the user cancels
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        //the info dictionary contains multiple representations of the image, and this uses the original
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        photoImageView.image = selectedImage;
        
        //dismiss the picker
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
}

