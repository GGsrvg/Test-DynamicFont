//
//  ViewController.swift
//  testFont
//
//  Created by GGsrvg on 11.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let cellName = "cell"
    
    @IBOutlet weak var tableView: UITableView!
    
    let array: [UIFont.TextStyle] = [
        .largeTitle,
        .title1,
        .title2,
        .title3,
        .headline,
        .subheadline,
        .body,
        .callout,
        .footnote,
        .caption1,
        .caption2,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellName)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        let textStyle = array[indexPath.row]
        cell.textLabel?.text = "\(textStyle.rawValue)"
        cell.textLabel?.font = UIFont.preferredFont(forTextStyle: textStyle)
        return cell
    }
}

