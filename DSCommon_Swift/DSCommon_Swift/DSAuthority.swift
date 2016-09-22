//
//  DSAuthority.swift
//  DSCommon_Swift
//
//  Created by Sincere on 16/9/9.
//  Copyright © 2016年 Sincere. All rights reserved.
//

import UIKit

import AssetsLibrary
import CoreLocation
import AVFoundation
import AssetsLibrary
import AddressBook
import Photos

class DSAuthority: NSObject {
    
    func isPhotosAuthorized() -> Bool {
        
        switch PHPhotoLibrary.authorizationStatus() {
            
        case .Authorized:
            return true
        default:
            return false
        }
    }
    
    func isCameraAuthorized() -> Bool {
        
        switch AVCaptureDevice.authorizationStatusForMediaType(AVMediaTypeVideo) {
        
        case .Authorized:
            return true
        default:
            return false
        }
    }

}
