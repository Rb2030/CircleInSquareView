//
//  SquareView.swift
//  CircleInSquare
//
//  Created by Ross on 11/10/2017.
//  Copyright © 2017 Ross. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class SquareView: UIView {
    
    var squareView: UIView!
    var circleView: UIView!

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setupViews()
    }
        
    func setupViews() {
        
        self.squareView = UIView(frame: .zero)
        self.addSubview(self.squareView)
        self.layer.cornerRadius = 30
        self.backgroundColor = UIColor.yellow
        self.squareView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
            
        }
        
        self.circleView = UIView(frame: .zero)
        squareView.addSubview(self.circleView)
        self.circleView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(180)
            make.width.equalTo(180)
        }
        
        circleView.backgroundColor = UIColor.black
        circleView.layer.cornerRadius = 90
        
    }
}
