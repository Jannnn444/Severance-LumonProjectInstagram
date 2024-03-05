//
//  PersonalPageTableViewController.swift
//  Instagram
//
//  Created by yucian huang on 2024/3/5.
//

import UIKit


var user: User?



class PersonalPageTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "\(PersonalTopTableViewCell.self)", for: indexPath) as! PersonalTopTableViewCell
            
            // Configure the cell...
            
            return cell
    
        
                } else if indexPath.row == 1 {
        
                    let cell2 = tableView.dequeueReusableCell(withIdentifier: "PersonalButtonTableViewCell", for: indexPath) as! PersonalButtonTableViewCell
                    return cell2
        
                } else {
        
                        let cell3 = tableView.dequeueReusableCell(withIdentifier: "PersonalGridTableViewCell", for: indexPath) as! PersonalGridTableViewCell
        
                        return cell3
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
         override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
    
    class CapsuleBorderButton: UIButton {
        
        override func layoutSubviews() {
            super.layoutSubviews()
            layer.borderWidth = 2
            layer.cornerRadius = bounds.midY
            layer.borderColor = titleColor(for: .normal)?.cgColor
        }
        
    }
    
}
