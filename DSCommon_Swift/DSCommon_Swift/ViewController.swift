//
//  ViewController.swift
//  DSCommon_Swift
//
//  Created by Sincere on 16/9/2.
//  Copyright © 2016年 Sincere. All rights reserved.
//

import UIKit

import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let btn = UIButton.init(frame: CGRectMake(0, 100, 100, 100))
        
        btn.backgroundColor = UIColor.brownColor()
        
        btn.addTarget(self, action:.test , forControlEvents: .TouchUpInside)
        
        self.view.addSubview(btn)
        
    }
    
    let BaiduURL = "/ck/storeRegion.html"
    
    func test(){
        
        let p = NSDictionary()
        
        let request = DSRequest.init(name: "登陆", path: BaiduURL, method: "POST", parameters: p)
        
        DSHTTP.http.request(request, success: { response in
            
            let model:DSResponse = DSResponse.parse(dict: response.result.value as! NSDictionary)
            
            print(model)
            
            }, fail: { response in
                
                let model:DSResponse = DSResponse.parse(dict: response.result.value as! NSDictionary)
                
                print(model)
                
        })
    }
}

private extension Selector {
    
    static let test = #selector(ViewController.test)
    
}

