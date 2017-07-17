import Foundation
import UIKit

class SearchMovieController : UITableViewController {
    
    var names = [String]()
    override func viewDidLoad() {
        names =  ["John", "Snow","Stark", "asldkjfksaffdkjs"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        cell?.textLabel?.text = names[indexPath.row]
        return cell!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailsController = segue.destinationViewController as! MovieDetailsController
        detailsController.newGenre = "Action/Fiction"
        detailsController.newMovieTitle = "Batman Begins: Wet Trash Poopfart"
        detailsController.newPlot = "Mussum Ipsum, cacilds vidis litro abertis. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Quem manda na minha terra sou euzis! Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. Leite de capivaris, leite de mula manquis sem cabeça."
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("SegueMovieListToDetail", sender: self)
    }
}