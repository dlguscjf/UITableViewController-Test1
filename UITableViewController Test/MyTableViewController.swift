//
//  MyTableViewController.swift
//  UITableViewController Test
//
//  Created by D7703_06 on 2018. 5. 16..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var foodnames = ["동의과학대학교","부산시민공원","롯데호텔 부산본점"]
    var foodAddress = ["부산광역시 부산진구 양지로 54","부산광역시 부산진구 영지동 100-6","부산광역시 부산진구 부전동 부전로 503-15"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodnames.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
            as! foodTableViewCell
       
        cell.foodcellname.text = foodnames[indexPath.row]
        cell.foodcelladdress.text = foodAddress[indexPath.row]
        return cell
    }
    
  
   

}
