//
//  ViewController.swift
//  Aug_24_BackDataPassingUsingClousres
//
//  Created by Vishal Jagtap on 26/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    var reuseIdentifierForSVC = "SecondViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func btnNext(_ sender: Any) {
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForSVC) as! SecondViewController
        
        //step 4 -- on firstViewController -- call the closure and bind the data to labels
        secondViewController.backDataPassingClosure = {
            firstName, middleName, lastName in
            self.firstNameLabel.text = firstName
            self.middleNameLabel.text = middleName
            self.lastNameLabel.text = lastName
        }
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
