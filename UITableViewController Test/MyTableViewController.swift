//
//  MyTableViewController.swift
//  UITableViewController Test
//
//  Created by D7703_06 on 2018. 5. 16..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var foodnames = ["늘해랑","번개반점","아딸","왕짜장","토마토 도시락","홍콩반점"]
    var foodThumbail = ["01","02","03","04","05","06"]
    var foodAddress = ["부산광역시 부산진구 양정1동 350-1","부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 393-18","부산광역시 부산진구 양정1동 356-22","부산광역시 부산진구 양정동","부산광역시 부산진구 양정1동 중앙대로 902"]
    var foodTel = ["051-852-9969","051-853-0410","051-853-0410","051-853-0410","051-853-0410","051-853-0410"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "배달음식점"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodnames.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
            as! foodTableViewCell
       
        cell.foodcellname.text = foodnames[indexPath.row]
        cell.foodcellimage.image = UIImage(named: foodThumbail[indexPath.row])
        cell.foodcelladdress.text = foodAddress[indexPath.row]
        cell.foodcelltel.text = foodTel[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 전화걸기 alert
        let optionMenu = UIAlertController(title : "전화걸기 : " + foodnames[indexPath.row], message: foodTel[indexPath.row], preferredStyle: .actionSheet)
        let call = UIAlertController(title : "전화중 " + foodnames[indexPath.row], message: foodTel[indexPath.row], preferredStyle: .alert)
         let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler:nil)
        let callAction = UIAlertAction(title : "전화를 거시겠습니까.", style: .default){
            (action: UIAlertAction) -> Void in
            call.addAction(cancelAction)
             self.present(call, animated: true, completion: nil)
        }
       
      
        optionMenu.addAction(callAction)
        optionMenu.addAction(cancelAction)
        present(optionMenu, animated: true, completion: nil)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
