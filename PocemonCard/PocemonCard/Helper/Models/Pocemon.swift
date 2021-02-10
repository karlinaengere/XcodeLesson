//
//  Pocemon.swift
//  PocemonCard
//
//  Created by karlina.engere on 09/02/2021.
//

import Foundation


struct Pocemon: Decodable {
    let name: String
    var imageUrl: String
    // let number_Card: String
    let numberCard: String
    
    enum CodingKeys: String, CodingKey{
        case name
        case imageUrl
        //case numberCard = "number"
        case number
    }
}


struct Card: Decodable {
    let cards: [Pocemon]
}
