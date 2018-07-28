//
//  EntryViewController.swift
//  Travelogue
//
//  Created by Landen Eagan on 7/27/18.
//  Copyright © 2018 Landen Eagan. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoSelectButton: UIButton!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func openPhotoLibrary(_ sender: Any) {
        let photoPicker = UIImagePickerController()
        photoPicker.delegate = self
        photoPicker.sourceType = .photoLibrary
        
        self.present(photoPicker, animated: true, completion: nil)
        
        photoSelectButton.setTitle("", for: .normal)
    }
    
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        photoImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveEntry(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
        let title = titleTextField.text
        let text = textView.text
        let date = NSDate()
//        let image = UIImagePNGRepresentation(photoImageView.image)
//
//        if let entry = Entry(title: title, date: date as Date, image: image, entryDescription: text, owner: Logue?) {
//            do {
//                let managedContext = entry.managedObjectContext
//
//                try managedContext?.save()
//
//                self.navigationController?.popViewController(animated: true)
//            } catch {
//                print("Context could not be saved")
//            }
//        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
