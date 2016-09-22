//
//  NSObject+obj.swift
//  swift第三方
//
//  Created by  on 16/4/21.
//  Copyright © 2016年 张子谊. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    func modelWithDic(dic:NSDictionary)->AnyObject {
        self.setValuesForKeysWithDictionary(dic as! [String : AnyObject])
        return self
    }
    
    func modelWithArray(array:NSArray)->NSMutableArray {
        let sourceArray = NSMutableArray()
        for dic in array {
           sourceArray.addObject(self.modelWithDic(dic as! NSDictionary))
        }
        return sourceArray
    }
}