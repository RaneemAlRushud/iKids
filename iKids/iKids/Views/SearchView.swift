//
//  SearchView.swift
//  iKids
//
//  Created by Raneem AlRashoud on 30/01/2023.
//

import SwiftUI

struct SearchView: View {
    @StateObject var oo = SearchObservableObject()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Find a movie")
                    .font(.title.weight(.bold))
                
                Text("Start searching for a movie suits your choice")
                    .multilineTextAlignment(.center)
            }
            
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("Search")
            .foregroundColor(.secondary)
            
        }.searchable(text: $searchTerm) {
            ForEach(oo.searchResults) { movie in
                //Show a single item
                MovieRowView(movie: movie)
            }
            
        }
        .onChange(of: searchTerm) {
            searchTerm in oo.searchResults = oo.data.filter({
                movie in movie.name.lowercased().contains(searchTerm.lowercased())
                
            })
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
