//
//  CollectionViewCell.swift
//  TicTacToe-CollectionView
//
//  Created by DCS on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit


class CollectionViewCell: UICollectionViewCell {
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    func setupCell(with status:Int) {
        
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        
        contentView.addSubview(myImageView)
        
        myImageView.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
        
        let name = status == 0 ? "circle" : status == 1 ? "multiply" : ""
        
        myImageView.image = UIImage(named: name)
    }
    
}
