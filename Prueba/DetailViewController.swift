//
//  DetailViewController.swift
//  Prueba
//
//  Created by Diseño01 on 06/06/16.
//  Copyright © 2016 DanTuknal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var autores: UILabel!
    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var isbn: UILabel!
    

    var detailItem: Book? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        if let detail: Book = self.detailItem {
            if let label = self.isbn {
                label.text = "ISBN:\n\(detail.isbn)"
            }
            if let label = self.detailDescriptionLabel {
                label.text = detail.titulo
            }
            if let label = self.autores {
                label.text = detail.autores
                if label.text == autoresVacio{
                    label.textColor = UIColor.lightGrayColor()
                } else {
                    label.textColor = UIColor.blackColor()
                }
            }
            if let label = self.cover {
                label.image = detail.cover
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

