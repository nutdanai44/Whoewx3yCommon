//
//  ViewController.swift
//  Whoewx3yCommon
//
//  Created by nutdanai on 11/3/2562 BE.
//  Copyright © 2562 nutdanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tb: UITableView!
    
    @IBOutlet var headerView: Whoewx3yViewMask!
    
    let function:[[String]] = [
        ["Number","String"]
        ,["Some function"]
    ]
    let header:[String] = ["Extension","Function"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        initHeader()
        initTableView()
        
//        headerView.setGradientWithColor(colors: [UIColor.red.cgColor, UIColor.green.cgColor])
    }
    
    
    func initHeader() {
        var headerText = Whoewx3yViewMask.Label.Model()
        headerText.text = "Welcome to Nutdanai framework"
        headerView.maskAsLabel(colors: [UIColor.red.cgColor, UIColor.green.cgColor], lb: headerText)
    }
    
    func initTableView() {
        tb.delegate = self
        tb.dataSource = self
    }
}
extension ViewController {
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return function.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return function[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = function[indexPath.section][indexPath.row]
        return cell
    }
    
//    header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        let lbHeader = UILabel()
        lbHeader.text = "*\(header[section])*"
        lbHeader.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        lbHeader.frame = CGRect(x: 10,y: 0,width: 100,height: 50)
        view.addSubview(lbHeader)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}

