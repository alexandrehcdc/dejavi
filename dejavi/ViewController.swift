//
//  ViewController.swift
//  dejavi
//
//  Created by dimitri frazao on 6/29/17.
//  Copyright © 2017 none. All rights reserved.
//
// Foundation já está embedded em UIKit
import Foundation
import UIKit
import SwiftyJSON


class ViewController: UIViewController, UITableViewDataSource {
    var categories = ["Assistidos", "A assistir"]
    let network = APICalls()
    var fetchedResponse: JSON?
    
    @IBOutlet weak var removeMovie: UIButton!
    @IBOutlet weak var addMovie: UIButton!
    
    func loadButtonStyle() {
        removeMovie.layer.backgroundColor = UIColor.blueColor().CGColor
        removeMovie.layer.cornerRadius = 4
        removeMovie.setTitleColor(UIColor.whiteColor(), forState: UIControlState())
        addMovie.layer.backgroundColor = UIColor.blueColor().CGColor
        addMovie.layer.cornerRadius = 4
        addMovie.setTitleColor(UIColor.whiteColor(), forState: UIControlState())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadButtonStyle()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return categories.count
    }
    
    @IBAction func RemoveMovie(sender: UIButton) {
    }
    
    @IBAction func AddMovie(sender: UIButton) {
        network.callAPI("batman", "&t=") { (dataRetrieved) in
            self.fetchedResponse = dataRetrieved
            print("o mundo é dos nets filho da puta \(self.fetchedResponse!)")
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! CategoryRow
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

