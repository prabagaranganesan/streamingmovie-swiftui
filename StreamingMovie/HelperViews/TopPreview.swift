//
//  TopPreview.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 11/12/21.
//

import SwiftUI
import KingfisherSwiftUI

struct TopPreview: View {
    var movie: Movie
    
    func caterGoryfirst(_ category: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        Text(category)
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                        if !caterGoryfirst(category) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                        
                    }
                }.padding(.vertical, 5)
                
                HStack {
                    Spacer()
                    SmallVerticalButton(isOnImage: "checkmark", isOffImage: "plus", isOn: true, text: "My List") {
                        
                    }
                    
                    Spacer()
                    
                    PlayButton(text: "play", imageName: "play.fill") {
                        
                    }.frame(width: 120)
                    
                    Spacer()
                    SmallVerticalButton(isOnImage: "info.circle", isOffImage: "info.circle", isOn: true, text: "Info") {
                        
                    }
                    Spacer()
                }
                
            }
            .background(
                LinearGradient.blackOpacityGradient
                    .padding(.top, 250)
            ).foregroundColor(.white)
        }
        
        
    }
}

struct TopPreview_Previews: PreviewProvider {
    static var previews: some View {
        TopPreview(movie: exampleMovie1)
    }
}
