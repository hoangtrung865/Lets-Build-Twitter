//
//  Cells.swift
//  Swift_Twitter
//
//  Created by HD WebSoft on 1/11/19.
//  Copyright © 2019 HD WebSoft. All rights reserved.
//

import LBTAComponents

class HeaderCell:DatasourceCell {
    
    let headerLabel : UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(headerLabel)
        headerLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}

class FooterCell:DatasourceCell {
    override func setupViews() {
        super.setupViews()
    }
    
    let footerLabel : UILabel = {
        let label = UILabel()
        label.text = "Show me more..."
        label.textAlignment = .center
        return label
    }()
}
class UserCell:DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let avatarImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profile_image")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel :UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    let userLabel : UILabel = {
        let label = UILabel()
        label.text = "@AmyLearnBuildApp"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize:1 )
        return label
    }()
    
    let bioTextview : UITextView = {
        let textview = UITextView()
        textview.text = "Dream trip on a dream bike Dream trip on a dream bike Dream trip on a dream bike Dream trip on a dream bike Dream trip on a dream bike "
        return textview
    }()
    
    let followButton : UIButton = {
        let button = UIButton()
        let blueColor = UIColor(r: 61, g: 167, b: 244)
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.layer.borderColor = blueColor.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(blueColor, for: .normal)
//        button.setImage(UIImage(named: "add_user"), for: .normal)
//        button.imageView?.contentMode = .scaleAspectFit
//        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(nameLabel)
        addSubview(avatarImage)
        addSubview(userLabel)
        addSubview(bioTextview)
        addSubview(followButton)
        
        nameLabel.anchor(topAnchor, left: avatarImage.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 8, leftConstant: 8 , bottomConstant: 0, rightConstant: 8, widthConstant:  0, heightConstant: 20)
        avatarImage.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        userLabel.anchor(nameLabel.bottomAnchor, left: avatarImage.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 4, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 0, heightConstant: 20)
        bioTextview.anchor(avatarImage.bottomAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 8, leftConstant: 8, bottomConstant: 8, rightConstant: 8, widthConstant: 0, heightConstant: 0)
        followButton.anchor(self.topAnchor, left: avatarImage.rightAnchor, bottom:nil, right: self.rightAnchor, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 100, heightConstant: 40)
        }
}

