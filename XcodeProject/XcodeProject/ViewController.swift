//
//  ViewController.swift
//  XcodeProject
//
//  Created by Иван on 09.08.2023.
//

import UIKit

//MARK: - ViewController

class ViewController: UIViewController {

    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: - list
    
    let list: [String] = ["Аист", "Бревно", "Велосипед"]

    //MARK: - UI Elements
    
    let tableView = UITableView(frame: .zero, style: .insetGrouped)

}

//MARK: - private extension ViewController

private extension ViewController {
    
    //MARK: - setup()
    
    func setup() {
        addViews()
        makeConstraints()
        setupViews()
        setupSettings()
    }
    
    func addViews() {
        view.addSubview(tableView)
    }
    
    func makeConstraints() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func setupViews() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func setupSettings() {
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
}

//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    //MARK: - cellForRowAt
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
}

//MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    
    //MARK: - didSelectRowAt
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
