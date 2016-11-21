//
//  SecondViewController.swift
//  Data Over Segues
//
//  Created by T.J. Helton on 10/24/16.
//  Copyright © 2016 T.J. Helton. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
   
    var secondViewMsg: String?
    
    @IBOutlet weak var lblMessage: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        lblMessage.text = secondViewMsg
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let third = segue.destination as! ThirdViewController
        third.thirdViewMsg = lblMessage.text
    }

}
