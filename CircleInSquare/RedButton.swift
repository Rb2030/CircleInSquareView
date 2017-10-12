//
//  RedButton.swift
//  CircleInSquare
//
//  Created by Ross on 12/10/2017.
//  Copyright © 2017 Ross. All rights reserved.
//

import Foundation
import SnapKit

class RedButton: UIButton {
    
    var redButton: UIButton!
    var newView: NewView!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setupViews()
    }
    
    func setupViews() {
        
        redButton = UIButton(frame: .zero)
        self.addSubview(self.redButton)
        self.redButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.redButton.setTitle("PUSH", for: .normal)
        self.redButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalTo(100)
        }
        
        redButton.backgroundColor = UIColor.red
        redButton.layer.cornerRadius = 50
    }
    
    func buttonAction(sender: UIButton!) {
        print("Button Tapped")
        
        self.newView = NewView(frame: .zero)
        self.newView.addSubview(self.newView)
        self.newView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        self.newView.image = UIImage(named: "Thumbs_up")
        self.newView.contentMode = .scaleAspectFill
        
    }

}
