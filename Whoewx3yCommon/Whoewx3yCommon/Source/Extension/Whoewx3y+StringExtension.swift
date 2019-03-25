//
//  Whoewx3y+StringExtension.swift
//  Whoewx3yCommon
//
//  Created by nutdanai on 25/3/2562 BE.
//  Copyright © 2562 nutdanai. All rights reserved.
//

import UIKit

public extension String {
    
    public var defaultSpace: String {
        if 0 == self.count || "" == self {
            return " "
        }
        return self
    }
    
    public func isValidForUrl()->Bool{
        if(self.hasPrefix("http") || self.hasPrefix("https")){
            return true
        }
        return false
    }
    
    public func isValidForUrlAndAppend()->String{
        if(self.hasPrefix("http") || self.hasPrefix("https")){
            return self
        }
        return "http://" + self
    }
    
    public var isEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest  = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    public var isPhoneNumber: Bool {
        //        let PHONE_REGEX = "^((\\+)|(00))[0-9]{6,14}$"
        let PHONE_REGEX = "^[0-9]+$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        return phoneTest.evaluate(with: self)
    }
    
    public func contains(find: String) -> Bool{
        return self.range(of: find) != nil
    }
    
    public func generateQRCode() -> UIImage? {
        let data = self.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }
        
        return nil
    }
    
}
