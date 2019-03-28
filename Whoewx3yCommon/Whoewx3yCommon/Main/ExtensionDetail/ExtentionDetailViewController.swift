//
//  ExtentionDetailViewController.swift
//  Whoewx3yCommon
//
//  Created by nutdanai on 26/3/2562 BE.
//  Copyright © 2562 nutdanai. All rights reserved.
//

import UIKit

class ExtentionDetailViewController: UIViewController {

    @IBOutlet var title01: UILabel!
    @IBOutlet var value01: UILabel!
    
    @IBOutlet var title02: UILabel!
    @IBOutlet var value02: UILabel!
    
    @IBOutlet var title03: UILabel!
    @IBOutlet var value03: UILabel!
    
    @IBOutlet var title04: UILabel!
    @IBOutlet var value04: UILabel!
    
    @IBOutlet var viewLT: UIView!
    @IBOutlet var viewRT: UIView!
    @IBOutlet var viewLB: UIView!
    @IBOutlet var viewRB: UIView!
    
    var vcTag = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = vcTag
        switch vcTag {
        case "Number":
            setNumberMode()
            break
        case "String":
            setStringMode()
            break
        case "Color":
            setColorMode()
            break
        case "UILabel":
            setUILabelMode()
            break
        case "UIView":
            setUIViewMode()
            break
        case "UIImage":
            setUIImageMode()
            break
        case "UIViewController":
            setUIViewControllerMode()
            break
        case "UIButton":
            setUIButtonMode()
            break
        default:
            break
        }
    }
}
extension ExtentionDetailViewController {
    
    private func clearMode() {
        title01.text = ""
        value01.text = ""
        
        title02.text = ""
        value02.text = ""
        
        title03.text = ""
        value03.text = ""
        
        title04.text = ""
        value04.text = ""
        
        viewLT.isHidden = true
        viewRT.isHidden = true
        viewLB.isHidden = true
        viewRB.isHidden = true
    }
    
    private func setNumberMode() {
        clearMode()
        
        title01.text = "abbreviateNumber"
        value01.text = "  1230000 -> \(1230000.abbreviateNumber()) ,5000 -> \(5000.abbreviateNumber())"
        
        title02.text = "zeroToDat"
        value02.text = "  0 -> \(0.zeroToDat())"
    
    }
    private func setStringMode() {
        clearMode()
        
        title01.text = "defaultSpace =\n" + "  check string is not '' and replace to '  ' "
        
        value01.text = "isValidForUrl =\n" + "  http://www.google.com -> \("http://www.google.com".isValidForUrl())\n" + "  www.google.com -> \("www.google.com".isValidForUrl())"
        
        title02.text = "isValidForUrlAndAppend =\n" + "  http://www.google.com -> \("http://www.google.com".isValidForUrlAndAppend())\n" + "  www.google.com -> \("www.google.com".isValidForUrlAndAppend())"
        
        value02.text = "isEmail = check email regEx"
        
        title03.text = "isPhoneNumber = check phone regEx"
        
        let value = "i am a man"
        value03.text = "contains = \(value) -> \n" + "(can find an) \(value.contains(find: "an"))\n" + "(can find man) \(value.contains(find: "man"))\n" + "(can find girl) \(value.contains(find: "girl"))"
        
        title04.text = "generateQRCode = \n" + "convert string to QR image"
    }
    private func setColorMode() {
        clearMode()
        title03.text = "NONE"
    }
    private func setUILabelMode() {
        clearMode()
        title03.text = "NONE"
    }
    private func setUIViewMode() {
        clearMode()
    }
    private func setUIImageMode() {
        clearMode()
        title03.text = "NONE"
    }
    private func setUIViewControllerMode() {
        clearMode()
    }
    private func setUIButtonMode() {
        clearMode()
        title03.text = "btn"
        
        let btn = UIButton()
        
    }
}
