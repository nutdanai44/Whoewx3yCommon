//
//  Whoewx3y+NumberExtension.swift
//  Whoewx3yCommon
//
//  Created by nutdanai on 11/3/2562 BE.
//  Copyright © 2562 nutdanai. All rights reserved.
//

import UIKit

public extension Int {
    public func abbreviateNumber() -> String{
        if self < 1000 {
            return "\(self)"
        }
        
        if self < 1000000 {
            var n = Double(self);
            n = Double( floor(n/100)/10 )
            return "\(n.description)k"
        }
        
        var n = Double(self)
        n = Double( floor(n/100000)/10 )
        
        return "\(n.description)M"
    }
    
    public func zeroToDat() -> String {
        if self > 0 {
            return "\(self)"
        }
        return "-"
    }
}

public extension Double {
    
}

public extension Float {
    
}


