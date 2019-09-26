//
//  MemeTableViewController.swift
//  imagePicker
//
//  Created by Nammy Dun on 31/7/2019.
//  Copyright © 2019 Nammy Dun. All rights reserved.
//

import UIKit

class MemeTableViewController: UITableViewController  {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
    
        super.viewWillAppear(animated)
        self.tableView.reloadData()
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))

    }
    
    // Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return memes.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableCell") as! MemeTableViewCell
        let meme = memes[(indexPath as NSIndexPath).row]
        
        // Set the table cell image and labels
        cell.tableCellImageView?.image = meme.memedImage
        cell.tableCellImageView.contentMode = UIView.ContentMode.scaleAspectFill
        cell.tableCellTopText.text = meme.topText
        cell.tableCellBottomText.text = meme.bottomText
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailController.meme = memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
        
    }

}
