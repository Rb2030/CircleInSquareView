//
//  ViewController.swift
//  CircleInSquare
//
//  Created by Ross on 11/10/2017.
//  Copyright © 2017 Ross. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var squareView: SquareView!
    var redButton: RedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupViews()
    }

        
    func setupViews() {
        
        self.squareView = SquareView(frame: .zero)
        self.view.addSubview(self.squareView)
        self.squareView.snp.makeConstraints{ (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(300)
        }
        
        self.redButton = RedButton(frame: .zero)
        self.squareView.addSubview(self.redButton)
        self.redButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
    }
    
    }




