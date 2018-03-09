//
//  NewItemViewController.swift
//  Lakshmi-JF Tracker
//
//  Created by Alapati,Lakshmi Manjari on 3/8/18.
//  Copyright © 2018 Manjari. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBOutlet weak var NameTF: UITextField!
    @IBOutlet weak var CalTF: UITextField!
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newItem"{
            if let temp = Double(CalTF.text!){
                AppDelegate.myModel.addNewItem(name: NameTF.text!, calories: temp)
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
