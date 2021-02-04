//
//  DetailViewController.swift
//  ListOfMovies
//
//  Created by arta.zidele on 03/02/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var movieDirectorLabel: UILabel!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var dayAndTime: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if movie != nil {
            movieImageView.image = UIImage(named: movie.photo)
            movieYearLabel.text = movie.year
            movieDirectorLabel.text = movie.director
            movieTitleLabel.text = movie.title
            dayAndTime.text = movie.session
        }
    }
    @IBAction func addReminder(_ sender: Any) {
        openReminders()
    }
    
     func openReminders() {
         if UIApplication.shared.canOpenURL(URL(string:"x-apple-reminderkit://")!) {
             UIApplication.shared.open(URL(string: "x-apple-reminderkit://")!) { (success) in
                 print("open: ", success)
             }
         }
     }
     
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
