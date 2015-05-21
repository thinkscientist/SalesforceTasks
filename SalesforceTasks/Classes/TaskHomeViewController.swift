//
//  TaskHomeViewController.swift
//  SalesforceTasks
//
//  Created by Quinton Wall on 1/22/15.
//  Copyright (c) 2015 Quinton Wall. All rights reserved.
//

import UIKit


class TaskHomeViewController: UIViewController, SFRestDelegate {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tasks.getTasks(self)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: salesforce delegate events!
    func request(request: SFRestRequest?, didLoadResponse jsonResponse: AnyObject) {
        //add response code here
        println(jsonResponse)
        
        var records = jsonResponse.objectForKey("records") as NSArray
        
        var obj : AnyObject! =  records.objectAtIndex(0)
        var desc = obj.objectForKey("Description") as? String
        var subject =  obj.objectForKey("Subject") as String
      
    
    }
    func request(request: SFRestRequest?, didFailLoadWithError error:NSError) {
        println("-->In Error: \(error)")
    }
    
    func requestDidCancelLoad(request: SFRestRequest) {
        println("In requestDidCancelLoad \(request)")
    }
    
    
    func requestDidTimeout(request: SFRestRequest) {
        println("In requestDidTimeout \(request)")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
