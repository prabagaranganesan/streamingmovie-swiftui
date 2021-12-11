//
//  HomeView.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 10/12/21.
//

import SwiftUI

struct HomeView: View {
    
    var viewModel = HomeVM()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.availableCategory, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                LazyHStack {
                                    ForEach(viewModel.getMovies(for: category)) { movie in
                                        StandardHomeView(movie: movie)
                                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            })
                        }
                    }
                }
            }
        }.foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
