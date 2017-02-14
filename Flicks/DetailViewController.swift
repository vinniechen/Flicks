//
//  DetailViewController.swift
//  Flicks
//
//  Created by Vinnie Chen on 2/7/17.
//  Copyright © 2017 Vinnie Chen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var infoView: UIView!
    
    @IBOutlet weak var detailView: UIView!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = movie["title"] as! String
        titleLabel.text = title
        
        let overview = movie["overview"] as! String
        overviewLabel.text = overview
        
        overviewLabel.sizeToFit() // allows label to extend downward to fit all text
        
        let baseURL = "https://image.tmdb.org/t/p/w500"
        if let posterURL = movie["poster_path"] as? String { // nil check
            let imageURL = NSURL(string: baseURL + posterURL)
            posterImageView.setImageWith(imageURL! as URL)
        }
        // Sets where you can scroll for scrol
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: detailView.frame.origin.y + detailView.frame.size.height)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
