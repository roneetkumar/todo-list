//
//  SecondViewController.swift
//  Question7
//
//  Created by english on 2019-12-11.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    var userName = ""
    
    var list:[String] = ["hello"]
    @IBOutlet weak var item: UITextField!
    
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = userName
        // Do any additional setup after loading the view.
        list = UserDefaults.standard.stringArray(forKey: "list") ?? []
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return cell
        
    }
    
    @IBAction func btnClear(_ sender: Any) {
        list.removeAll()
        UserDefaults.standard.set(list, forKey: "list")
        table.reloadData()
    }
    @IBAction func btnEnter(_ sender: UIButton) {
        
        if item.text != ""  {
            list.append(item.text!)
            UserDefaults.standard.set(list, forKey: "list")
            table.reloadData()
            item.text = ""
        }else{
            
        }
    }
}
