//
//  ChatViewController.swift
//  Segue
//
//  Created by T.J. Helton on 10/20/16.
//  Copyright © 2016 T.J. Helton. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var txtEnterMessage: UITextField!
    @IBOutlet weak var btnSend: UIButton!
    @IBOutlet weak var chatView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
