//
//  SearchObservableObjectModel.swift
//  iKids
//
//  Created by Raneem AlRashoud on 06/07/1444 AH.
//

import Foundation
class SearchObservableObject: ObservableObject {
   // @Published var searchText = ""
    var data: [MoviePoster] = []
    
    //to view it in the UI
     @Published var searchResults: [MoviePoster] = []
    
    init() {
      data = SearchData.shared.getSearchData()
    }
    
}
