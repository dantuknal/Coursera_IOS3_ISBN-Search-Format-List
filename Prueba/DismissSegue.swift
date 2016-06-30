//
//  DismissSegue.swift
//  Prueba
//
//  Created by Diseño01 on 10/06/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    override func perform() {
        if let controller = sourceViewController.presentingViewController {
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}