//
//  UIViewControllerExtensions.swift
//  Habitual
//
//  Created by Mark Kim on 4/28/20.
//  Copyright © 2020 Mark Kim. All rights reserved.
//

import UIKit

extension UIViewController {
    static func instantiate() -> Self {
        return self.init(nibName: String(describing: self), bundle: nil)
    }
}
