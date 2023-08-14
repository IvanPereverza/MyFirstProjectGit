//
//  TheThirdNavigationController.swift
//  
//
//  Created by Иван on 14.08.2023.
//

import UIKit

//MARK: - ThirdViewController

class ThirdViewController: UIViewController {
    
    //MARK: - viewDodLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    //MARK: - UI Elements
    
    let label = UILabel()
}

//MARK: - private extension ThirdViewController

private extension ThirdViewController {
    
    //MARK: - setup()
    
    func setup() {
        addViewsLabel()
        makeConstraintsLabel()
        setupViews()
        setupSettings()
    }
    
    func addViewsLabel() {
        view.addSubview(label)
    }
    
    func makeConstraintsLabel() {
        label.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
    
    func setupViews() {
        label.font = UIFont.systemFont(ofSize: 25)
    }
    
    func setupSettings() {
        label.text = "Велосипед"
    }
}
