//
//  Tasks.swift
//  SalesforceTasks
//
//  Created by Quinton Wall on 2/5/15.
//  Copyright (c) 2015 Quinton Wall. All rights reserved.
//

import Foundation


class Tasks: NSObject, SFRestDelegate {
    
    class func getTasks(delegate: SFRestDelegate) {
        let sharedInstance = SFRestAPI.sharedInstance()
        let request = sharedInstance.requestForQuery("SELECT Id, AccountId, IsClosed, IsArchived, IsHighPriority, Description, Priority, Subject, Status, ActivityDate FROM Task  where IsClosed = false ") as SFRestRequest
        
        sharedInstance.send(request, delegate: delegate)
    }
}