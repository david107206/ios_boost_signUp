//
//  SignUp1ViewController.swift
//  SignUpDavid
//
//  Created by MB-0026 on 2020/08/30.
//  Copyright © 2020 david0314. All rights reserved.
//

import UIKit

class SignUp1ViewController: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @IBOutlet weak var textFieldId: UITextField?
    @IBOutlet weak var textFieldPw: UITextField!
    @IBOutlet weak var textFieldPwCheck: UITextField!
    @IBOutlet weak var buttonNext: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissModal(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func galleryShow(){
        let viewController = UIImagePickerController()
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        print(info)
    }
    
    @IBAction func textFieldEditingDidChange(_ sender: Any) {
        print("textField: \(textFieldPwCheck.text!)")
        
        if validatePassword(textPwCheck: textFieldPwCheck.text! , textPw: textFieldPw.text!) {
            // correct password
            buttonNext?.isEnabled = true
        } else {
            buttonNext?.isEnabled = false
        }
    }
    
    func validatePassword(textPwCheck: String , textPw: String ) -> Bool {
        var result = false
        // test password
        if textPwCheck == textPw{
            result = true
        }
        print("result: \(result)")

        return result
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


