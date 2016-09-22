//
//  DSBaseViewController.swift
//  DSCommon_Swift
//
//  Created by Sincere on 16/9/9.
//  Copyright © 2016年 Sincere. All rights reserved.
//

import UIKit

class DSBaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func leftItem(left:UIBarButtonItem) {
        self.navigationItem.leftBarButtonItem = left
    }
    
    func rightItem(rightItem:UIBarButtonItem) {
        self.navigationItem.rightBarButtonItem = rightItem
    }
    
    func leftItems(leftItems:NSArray) {
        self.navigationItem.leftBarButtonItems = leftItems as? [UIBarButtonItem]
    }
    
    func rightItems(rightItems:NSArray) {
        self.navigationItem.rightBarButtonItems = rightItems as? [UIBarButtonItem]
    }

    func showTitle(title:NSString) {
        self.navigationItem.title = title as String
    }
}
