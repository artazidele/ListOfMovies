//
//  DataManager.swift
//  ListOfMovies
//
//  Created by arta.zidele on 03/02/2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    var title = [
        "The Well",
        "A Quite Place",
        "Us",
        "Hereditary",
        "Get Out"
    ]
    var director = [
        "Misko Massanyi",
        "John Krasinski",
        "Jordan Peele",
        "Ari Aster",
        "Jordan Peele"
    ]
    var year = [
        "2018",
        "2018",
        "2019",
        "2018",
        "2017"
    ]
    var photo = [
        "1",
        "2",
        "3",
        "4",
        "5"
    ]
    var session = [
        "Friday 16.00",
        "Saturday 12.00",
        "Friday 20.00",
        "Sunday 21.00",
        "Saturday 15.00"
    ]
}
