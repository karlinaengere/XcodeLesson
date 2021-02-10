//
//  DetailMovieListTableViewCell.swift
//  Movie List
//
//  Created by karlina.engere on 03/02/2021.
//

import UIKit

class DetailMovieListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var MovieImageView: UIImageView!
    @IBOutlet weak var MovieNameLabel: UILabel!
    
    var movie: Movie!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
        if movie != nil{
            MovieImageView.image = UIImage(named: movie.poster)
            MovieNameLabel.text = movie.movie + " - " + movie.album
            MovieNameLabel.numberOFLines = 0
            
        }
    }
}
