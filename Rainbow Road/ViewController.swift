//
//  ViewController.swift
//  Rainbow Road
//
//  Created by Emily on 1/15/18.
//  Copyright © 2018 Emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableField: UITableView!
    var colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green,UIColor.blue,UIColor.purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableField.dataSource = self
        tableField.rowHeight = 120.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
}
