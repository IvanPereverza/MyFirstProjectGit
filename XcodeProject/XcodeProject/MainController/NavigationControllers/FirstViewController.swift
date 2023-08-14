//
//  NewViewController.swift
//  XcodeProject
//
//  Created by Иван on 11.08.2023.
//

import UIKit

//MARK: - NewViewController

class FirstViewController: UIViewController {

    //MARK: - viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    //MARK: - UI Elements
    
    let label = UILabel()
    
}

//MARK: - private extension SystemViewController

private extension FirstViewController {
    
    //MARK: - setup()
    
    func setup() {
        addViews()
        makeConstraints()
        setupViews()
        setupSettings()
    }
    
    func addViews() {
        view.addSubview(label)
    }
    
    func makeConstraints() {
        label.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
    
    func setupViews() {
        label.font = UIFont.systemFont(ofSize: 25)
    }
    
    func setupSettings() {
        label.text = "Азбука"
    }
}
