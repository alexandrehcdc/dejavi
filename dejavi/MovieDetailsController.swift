import UIKit

class MovieDetailsController: UIViewController {
    
    @IBOutlet weak var plot: UILabel!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var runtime: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var alreadyWatchedBtn: UIButton!
    @IBOutlet weak var wannaWatchBtn: UIButton!
    var newPlot, newGenre, newRuntime, newMovieTitle: String?
    
    func loadFields (newPlot: String, newGenre: String, newRuntime: String, newMovieTitle: String) {
        plot.text = newPlot
        genre.text = newGenre
        runtime.text = newRuntime
        movieTitle.text = newMovieTitle
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alreadyWatchedBtn = loadCustomButtonStyle(alreadyWatchedBtn)
        wannaWatchBtn = loadCustomButtonStyle(wannaWatchBtn)
        // loadFields(newPlot!, newGenre: newGenre!, newRuntime: newRuntime!, newMovieTitle: newMovieTitle!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
