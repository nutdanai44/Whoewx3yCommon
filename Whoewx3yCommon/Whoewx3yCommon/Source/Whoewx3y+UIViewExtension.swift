//
//  Whoewx3y+UIViewExtension.swift
//  Whoewx3yCommon
//
//  Created by nutdanai on 14/3/2562 BE.
//  Copyright © 2562 nutdanai. All rights reserved.
//

import UIKit

public extension UIView {
    public func setGradientWithColor(colors :[CGColor]) {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colors
        
        gradient.startPoint = CGPoint(x: 0.0,y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0,y: 0.5)
        
        self.layer.addSublayer(gradient)
    }

}

public class Whoewx3yViewMask: UIView {
    public class Label: NSObject {
        struct Model {
            var text = ""
            var font:UIFont = UIFont.systemFont(ofSize: 17)
            var alignment: NSTextAlignment = .center
            var numOfLine = 0
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
//        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        setup()
    }
    
    func maskAsLabel(colors: [CGColor], lb: Label.Model) {
        let view = UIView(frame: self.bounds)
        self.addSubview(view)
        view.setGradientWithColor(colors: colors)
        
        let label = UILabel(frame: view.bounds)
        label.text = lb.text
        label.font = lb.font
        label.textAlignment = lb.alignment
        label.numberOfLines = lb.numOfLine
        view.addSubview(label)
        
        // Tha magic! Set the label as the views mask
        view.mask = label
    }
    
    func maskAsImage(colors: [CGColor], image: UIImage, mode: UIView.ContentMode) {
        let view = UIView(frame: self.bounds)
        self.addSubview(view)
        view.setGradientWithColor(colors: colors)
        
        let imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = mode
        imageView.image = image
        view.addSubview(imageView)
        
        // Tha magic! Set the label as the views mask
        view.mask = imageView
    }
}
