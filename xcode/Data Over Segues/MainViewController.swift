//
//  MainViewController.swift
//  Data Over Segues
//
//  Created by T.J. Helton on 10/24/16.
//  Copyright © 2016 T.J. Helton. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var mainViewMsg: String?
    
    @IBOutlet weak var txtMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtMessage.text = mainViewMsg
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let second = segue.destination as! SecondViewController
    second.secondViewMsg = txtMessage.text
    }
}
