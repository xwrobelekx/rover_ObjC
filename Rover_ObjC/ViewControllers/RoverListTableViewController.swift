//
//  RoverListTableViewController.swift
//  Rover_ObjC
//
//  Created by Kamil Wrobel on 9/13/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import UIKit

class RoverListTableViewController: UITableViewController {
    
    
    
    var roverNames: [String]?

    override func viewDidLoad() {
        super.viewDidLoad()

        KWEFetchRovers.fetchRoverswithCompletion { (roverNames) in
            self.roverNames = roverNames
            print(self.roverNames?.compactMap{ $0 })
            
            //need dispatch group to do another detch for soles
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        

//        KWEFetchRovers.fetchRoverswithCompletion(rovers){
//            arrayOfRovers = rovers
//        }
    }



    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        guard let rovers = roverNames else {return 0}
        return rovers.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "roverCell", for: indexPath)
        guard let rovers = roverNames else {return UITableViewCell()}
        let rover = rovers[indexPath.row]

        cell.textLabel?.text = rover

        return cell
    }
   

 
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
