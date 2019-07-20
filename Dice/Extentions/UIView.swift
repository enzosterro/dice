//
//  UIView.swift
//  Dice
//
//  Created by Enzo Sterro on 22/06/2019.
//  Copyright © 2019 Enzo Sterro. All rights reserved.
//

import UIKit

extension UIView {

    var frameSize: CGSize {
        if #available(iOS 11.0, *) {
            return self.layoutMarginsGuide.layoutFrame.size
        } else {
            return frame.size
        }
    }

}
