//
//  DetailViewController.swift
//  track List
//
//  Created by karlina.engere on 03/02/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var TrackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var song: Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (song != nil) = nil {
            TrackImageView.image = UIImage(named: song.cover)
            trackNameLabel.text = song.track + " - " + song.album
            trackNameLabel.numberOfLines = 0
        }
    }
 

}
