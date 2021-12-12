//
//  HomeView.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 10/12/21.
//

import SwiftUI

struct HomeView: View {
    
    var viewModel = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVStack {
                        TopRowButtons()
                        
                        TopPreview(movie: exampleMovie2)
                            .frame(width: screen.width)
                            .padding(.top, -110)
                            .zIndex(-1)
                    
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

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            
            Spacer()
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Movies")
            })
            Spacer()
            Button(action: {
                
            }, label: {
                Text("My List")
            })
                
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
