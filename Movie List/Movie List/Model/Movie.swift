//
//  Movie.swift
//  Movie List
//
//  Created by karlina.engere on 03/02/2021.
//

import Foundation

struct Movie {
    
    let movie: String
    let rate: String
    let poster: String
    
    static func createMovie() -> [Movie]{
        var films: [Movie] = []
        
        let movies = DataManager.shared.movie
        let rates = DataManager.shared.rate
        let posters = DataManager.shared.poster
        
        
        for index in 0..<movies.count {
            let movie = Movie(movie: movies[index], rate: rates[index], poster: posters[index])
            films.append(movie)
        }
    return films
        
    }
    
}
