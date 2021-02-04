//
//  Movie.swift
//  ListOfMovies
//
//  Created by arta.zidele on 03/02/2021.
//

import Foundation

struct Movie {
    let title: String
    let director: String
    let year: String
    let photo: String
    let session: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        let titles = DataManager.shared.title
        let directors = DataManager.shared.director
        let years = DataManager.shared.year
        let photos = DataManager.shared.photo
        let sessions = DataManager.shared.session
        
        for index in 0..<titles.count {
            let movie = Movie(title: titles[index], director: directors[index], year: years[index], photo: photos[index], session: sessions[index])
            movies.append(movie)
        }
        return movies
    }
}
