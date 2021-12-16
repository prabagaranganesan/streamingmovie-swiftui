//
//  MovieDetail.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 14/12/21.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }
                .padding(.horizontal, 22)
                ScrollView(.vertical, showsIndicators: false, content: {
                    StandardHomeView(movie: movie)
                        .frame(width: screen.width/2.5)
                        
                    MovieInfoSubheadline(movie: movie)
                    if movie.promotionHeadline != nil {
                        Text(movie.promotionHeadline!)
                            .bold()
                            .font(.headline)
                    }
                    
                    PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                        
                    }
                    CurrentEpisodeInformation(movie: movie)
                    
                    CastInfo(movie: movie)
                    
                    HStack(spacing: 60) {
                        SmallVerticalButton(isOnImage: "plus", isOffImage: "checkmark", isOn: true, text: "My List") {
                            
                        }
                        
                        SmallVerticalButton(isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true, text: "Rate") {
                            
                        }
                        SmallVerticalButton(isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true, text: "My List") {
                            
                        }
                        Spacer()
                    }.padding(.leading, 20)
                    
                    //CustomTabSwitcher()
                })
            }
            .foregroundColor(.white)
            
            
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie2)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}


struct CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            
            HStack {
                Text("Creators: \(movie.creators)")
                Spacer()
            }
            
        }.font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                
                Spacer()
            }.padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
