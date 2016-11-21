//
//  ViewController.swift
//  Lunch
//
//  Created by J.W. Clark on 9/19/16.
//  Copyright © 2016 J.W. Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //HTTP POST method
    func post(url : String, params : String, successHandler: (response: String) -> Void) {
        let url = NSURL(string: url)
        let params = String(params);
        let request = NSMutableURLRequest(URL: url!);
        request.HTTPMethod = "POST"
        request.HTTPBody = params.dataUsingEncoding(NSUTF8StringEncoding)
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
            data, response, error in
            
            //in case of error
            if error != nil {
                return
            }
            
            let responseString : String = String(data: data!, encoding: NSUTF8StringEncoding)!
            successHandler(response: responseString)
        }
        task.resume();
    }
    
    //build a data parameter string from today
    func getDateParams() -> String {
        //get today
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day, .Month, .Year], fromDate: date)
        let day = components.day
        let month = components.month
        let year = components.year
        //ex:current_day=2016-09-01&adj=0
        return "current_day=\(year)-\(month)-\(day)&adj=0"
    
    //the view did load, successfully i suppose
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "http://myschooldining.com/RockhurstHighSchool/calendarWeek"
        post(url, params: getDateParams(), successHandler: {(response) in self.updateWebview(response)});
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

