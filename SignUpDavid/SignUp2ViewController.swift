//
//  SignUp2ViewController.swift
//  SignUpDavid
//
//  Created by MB-0026 on 2020/08/30.
//  Copyright © 2020 david0314. All rights reserved.
//

import UIKit

class SignUp2ViewController: UIViewController {
    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBOutlet weak var DateLabel: UILabel! // 날짜값을 출력할 라벨
    @IBOutlet weak var PhoneNumber: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        //DatePicker.addTarget(self, action: #selector(changedate(datePicker:)), for: UIControl.Event.valueChanged)
        DatePicker.addTarget(self, action: #selector(datePickerChanged), for: UIControl.Event.valueChanged)


    }
    
    @IBAction func popToPrev(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func dismissModel(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func changedate(datePicker: UIDatePicker) {
        
    }
    
    @IBAction func datePickerChanged(_ sender: Any) {
        let dateform = DateFormatter()
        DateLabel.text! = dateform.string(from: DatePicker.date)
        
        print("선택된 날짜: \(dateform.string(from: DatePicker.date))")
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
