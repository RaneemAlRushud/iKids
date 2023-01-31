//
//  MoviePosterModel.swift
//  iKids
//
//  Created by Raneem AlRashoud on 30/01/2023.
//

import Foundation

class MoviePoster: Deccodable {
    
    let id : String = UUID().uuidString
    var image: String?
    var name: String?
    var description: String?
    var rate: String?
    var date : String
    var time : String
    var isFaved: Bool
    
    
    enum MoviePosterCodingKeys: String, CodingKey {
    //List  cases
    
    }
    
    required public init (from decoder: Decoder) throws {
        
   // self.id = try? values.decodeIfPresent(, forKey: .)
        
    }
    
}

