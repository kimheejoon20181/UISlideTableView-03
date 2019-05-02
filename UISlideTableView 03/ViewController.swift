//
//  ViewController.swift
//  UISlideTableView 03
//
//  Created by D7703_22 on 2019. 5. 2..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lbl1.text = String(Int(mySlider.value))
        myTable.dataSource = self
        myTable.delegate = self
    }
    
    @IBAction func silder(_ sender: Any) {
        lbl1.text = String(Int(mySlider.value))
        myTable.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for:indexPath)
        cell.textLabel?.text = String(Int(mySlider.value) + indexPath.row)
        
        return cell
    }
    
}

