//
//  ViewController.swift
//  Demo_TableViewApp
//
//  Created by HigherVisibility on 21/09/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit



struct cellData {
    
    let cell: Int!
    let Image: UIImage!
    let name:String!
    let Fname:String!
    
}

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
     var arrayOfCellData = [cellData]()
    let animalname = ["Panda","Lion","tiger"]
    let animalFname = ["Panda","Lion","tiger"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arrayOfCellData = [cellData(cell:1, Image: UIImage(named: "cap.png"), name: "Panda",Fname: "Lion"),
        cellData(cell:2, Image: UIImage(named: "cap.png"), name: "Panda",Fname: "Lion")
        
        ]
        
        let nib = UINib(nibName: "CustomTableViewCell2", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "CustomCell2")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        
        if arrayOfCellData[indexPath.row].cell == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
            cell.CustomimageView.image = UIImage(named:"cap.png")
            cell.lblname.text = animalname[indexPath.row]
            cell.lblFname.text = animalFname[indexPath.row]
            return cell
            
        } else if arrayOfCellData[indexPath.row].cell == 2{
            
            let cell =  tableView.dequeueReusableCell(withIdentifier: "CustomCell2", for: indexPath) as! CustomTableViewCell2
            cell.imageView2.image = arrayOfCellData[indexPath.row].Image
            cell.name2.text = "Rehan"
                //arrayOfCellData[indexPath.row].name
            cell.Fname2.text = "qureshi"
             //arrayOfCellData[indexPath.row].Fname
            return cell
            
        } else if arrayOfCellData[indexPath.row].cell == 3{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
            cell.CustomimageView.image = UIImage(named:"cap.png")
            cell.lblname.text = animalname[indexPath.row]
            cell.lblFname.text = animalFname[indexPath.row]
            return cell
            
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
            cell.CustomimageView.image = UIImage(named:"cap.png")
            cell.lblname.text = animalname[indexPath.row]
            cell.lblFname.text = animalFname[indexPath.row]
            return cell
            
        }
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
//        cell.CustomimageView.image = UIImage(named:"cap.png")
//        cell.lblname.text = animalname[indexPath.row]
//        cell.lblFname.text = animalFname[indexPath.row]
//        return cell
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row].cell == 1 {
            return 250
            
        }else if arrayOfCellData[indexPath.row].cell == 2 {
            
            return 200
        }else{
            
            return 100
        }
    }
    
}

