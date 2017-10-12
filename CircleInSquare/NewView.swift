//
//  NewView.swift
//  CircleInSquare
//
//  Created by Ross on 12/10/2017.
//  Copyright © 2017 Ross. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class NewView: UIImageView {
    
    var newView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setupViews()
    }
    
    func setupViews() {
        
        newView = UIImageView(frame: .zero)
        self.newView.addSubview(self.newView)
        self.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        

    }
    
}

