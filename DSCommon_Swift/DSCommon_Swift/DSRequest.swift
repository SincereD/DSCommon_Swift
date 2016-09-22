//
//  DSRequest.swift
//  DSCommon_Swift
//
//  Created by Sincere on 16/9/2.
//  Copyright © 2016年 Sincere. All rights reserved.
//

import UIKit

/// 网络请求
class DSRequest: NSObject {
    
    var BasePath = "http://test.interface.indoorun.com"
    
    var requestName = NSString()
    
    var requestPath = String()
    
    var method = "POST"
    
    var parameters = NSDictionary()
    
    init(name:NSString, path:NSString, method:NSString, parameters:NSDictionary) {
        
        self.method = method as String
        
        self.requestName = name
        
        self.requestPath = BasePath + (path as String)
        
        self.parameters = parameters
    }
    
    override var description: String {
        
        let properties = ["BasePath", "requestName", "requestPath", "method", "parameters"]
        
        return "---------------------------------------- \n \(dictionaryWithValuesForKeys(properties)) \n"
    }
}
