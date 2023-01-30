//
//  MoviePosterModel.swift
//  iKids
//
//  Created by Raneem AlRashoud on 30/01/2023.
//

import Foundation

struct MoviePoster: Identifiable {
    
    let id : String = UUID().uuidString
    let image: String
    let name: String
    let description: String
    let rate: String
    let date : String
    let time : String
    let isFaved: Bool
    
}

