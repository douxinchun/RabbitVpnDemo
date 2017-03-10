//
//  UIView+CornerRadius.swift
//  rabbit
//
//  Created by CYC on 2016/11/19.
//  Copyright © 2016年 yicheng. All rights reserved.
//
//
import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0;
        }
    }
}
