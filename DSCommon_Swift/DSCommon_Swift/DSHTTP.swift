//
//  DSHTTP.swift
//  DSCommon_Swift
//
//  Created by Sincere on 16/9/2.
//  Copyright © 2016年 Sincere. All rights reserved.
//

import UIKit
import Alamofire

typealias successBlock = Response<AnyObject, NSError> -> Void
typealias failBlock = Response<AnyObject, NSError> -> Void

class DSHTTP: NSObject {

    static let http = DSHTTP()
    
    override init() {}
    
    func request(request:DSRequest, success:successBlock, fail:failBlock){
        
        print(request.debugDescription)
        
        
        Alamofire.request(.POST, request.requestPath, parameters: request.parameters as? [String : AnyObject]).responseJSON {response in
            
            switch response.result{
            
            case .Success:
           
                success(response)
           
            case .Failure:
           
                fail(response)
           
            }
        }
    }
    
}
