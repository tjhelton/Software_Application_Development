//
//  ThirdViewController.swift
//  Data Over Segues
//
//  Created by T.J. Helton on 10/24/16.
//  Copyright © 2016 T.J. Helton. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
   
    var thirdViewMsg: String?
    
    @IBOutlet weak var txtMessage: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        txtMessage.text = thirdViewMsg
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let first = segue.destination as! MainViewController
        first.mainViewMsg = txtMessage.text
    }
    

}
