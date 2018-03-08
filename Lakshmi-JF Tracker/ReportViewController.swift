//
//  ReportViewController.swift
//  Lakshmi-JF Tracker
//
//  Created by KK Charli on 3/8/18.
//  Copyright © 2018 Manjari. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    @IBOutlet weak var reportLB: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        AppDelegate.myModel.loadData()
        reportLB.text! = AppDelegate.myModel.combinedReport()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func restAT(_ sender: UIButton) {
        AppDelegate.myModel.reset()
        reportLB.text! = AppDelegate.myModel.combinedReport()
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
