//
//  SecondViewController.swift
//  Aug_24_BackDataPassingUsingClousres
//
//  Created by Vishal Jagtap on 26/09/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    var extractedFirstName : String?
    var extractedMiddleName : String?
    var extractedLastName : String?
    
    //step 1 -- declaring a closure
    var backDataPassingClosure : ((String,String,String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }
    
    @IBAction func btnBack(_ sender: Any) {
        guard let passDataClosure = backDataPassingClosure else {
            return
        }
        
        //step 2 -- extracting data from textfields
        
        extractedFirstName = self.firstNameTextField.text
        extractedMiddleName = self.middleNameTextField.text
        extractedLastName = self.lastNameTextField.text
        
        
        //step 3 -- passing data to closures
        passDataClosure(extractedFirstName!,
                        extractedMiddleName!,
                        extractedLastName!)
        
        self.navigationController?.popViewController(animated: true)
    }
}
