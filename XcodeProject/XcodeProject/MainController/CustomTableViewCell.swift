//
//  CustomTableViewCell.swift
//  XcodeProject
//
//  Created by Иван on 10.08.2023.
//

import UIKit

//MARK: - CustomTableViewCell

class CustomTableViewCell: UITableViewCell {
    
    //MARK: - statis var identifier
    
    static var identifier: String {
        return String (describing: self)
    }
    
    //MARK: - init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
