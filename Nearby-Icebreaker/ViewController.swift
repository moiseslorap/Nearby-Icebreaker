//
//  ViewController.swift
//  Nearby-Icebreaker
//
//  Created by Cesar Tesen on 5/27/21.
//

import UIKit
import NearbyInteraction

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if !NISession.isSupported {
            let storyboard = UIStoryboard(name: "Unsupported", bundle: nil)
            if let unsupportedView = storyboard.instantiateViewController(withIdentifier: "UnsupportedView") as? ViewController {
            present(unsupportedView, animated: true, completion: nil)
            }
        }
    }


}
