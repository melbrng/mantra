//
//  CustomMantraCell.swift
//  Mantra
//
//  Created by Melissa Boring on 8/20/19.
//  Copyright © 2019 Melissa Boring. All rights reserved.
//

import UIKit

class CustomMantraCell: UITableViewCell {
    
    var mantraImageView : UIImageView  = {
        var imageView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var mantraLabel : UILabel  = {
        var label = UILabel(frame: CGRect.init(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        return label
    }()
    
    var imageViewHeight = NSLayoutConstraint()
    
    var imageRatioWidth = CGFloat()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        mantraImageView.addSubview(mantraLabel)
        self.addSubview(mantraImageView)
        mantraImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mantraImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        mantraImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mantraImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
