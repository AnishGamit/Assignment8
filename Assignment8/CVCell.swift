//
//  CVCell.swift
//  Assignment8
//
//  Created by DCS on 11/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class CVCell: UICollectionViewCell {
    
    private let myimgv:UIImageView = {
        let imgview = UIImageView()
        imgview.contentMode = .scaleAspectFit
        imgview.clipsToBounds = true
        return imgview
    }()
    
    func setupCell(with status:Int){
        contentView.addSubview(myimgv)
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        myimgv.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
        
        let name = (status==0) ? ("zero") : (status == 1 ? "multiply" : "")
        myimgv.image = UIImage(named: name)
    }
    
}
