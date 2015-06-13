//
//  ViewController.swift
//  CookEnvigado
//
//  Created by Daniel Fuentes on 6/10/15.
//  Copyright (c) 2015 Daniel Fuentes. All rights reserved.
//

import UIKit
class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: Properties

    // Textbox
    @IBOutlet weak var txtName: UITextField!
    // Label
    @IBOutlet weak var lblName: UILabel!
    // ImageView
    @IBOutlet weak var photoImageView: UIImageView!

    //MARK: Carga
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtName.delegate = self
    }

    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
            textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(textField: UITextField) {
        lblName.text = textField.text
    }

    // MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismissViewControllerAnimated(true, completion: nil)
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {

        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage

        // Set photoImageView to display the selected image.
        photoImageView.image = selectedImage

        // Dismiss the picker.
        dismissViewControllerAnimated(true, completion: nil)
    }
    


    // MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {

        // Hide the keyboard.
        txtName.resignFirstResponder()

        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()

        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .PhotoLibrary

        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self

        presentViewController(imagePickerController, animated: true, completion: nil)
    }

    @IBAction func btnAction(sender: UIButton) {
        lblName.text = txtName.text
    }

}

