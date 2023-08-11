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
    
    let list: [Test] = [
        Test(header: "А", words: ["Аист", "Азбука"]),
        Test(header: "Б", words: ["Бревно", "Берёза"]),
        Test(header: "В", words: ["Велосипед", "Вилка"])
    ]

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
        self.title = "Dictionary"
    }
}

//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    //MARK: - cellForRowAt
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell
        cell.textLabel?.text = list[indexPath.section].words[indexPath.row]
        return cell
    }
    
    //MARK: - numberOfSections
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }
    
    //MARK: - numberOfRowsInSection
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].words.count
    }
    
    //MARK: - titleForHeaderInSection
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "А"
        case 1: return "Б"
        case 2: return "В"
        default:
            return "UNKNOWNED"
        }
    }
    
    //MARK: - titleForFooterInSection
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section {
        case 0: return "Words beggining on A"
        case 1: return "Words beginning on Б"
        case 2: return "Words beginning on В"
        default:
            return "INKNOWNED"
        }
    }
}

//MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    
    //MARK: - didSelectRowAt
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let systemVC = SystemViewController()
        navigationController?.pushViewController(systemVC, animated: true)
    }
}
