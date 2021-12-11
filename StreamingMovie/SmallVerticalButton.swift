//
//  SmallVerticalButton.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 11/12/21.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    var text: String
    var action: () -> Void

    
    var imageName: String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
    }
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                    
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
        
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            SmallVerticalButton(isOnImage: "checkmark",
                                isOffImage: "plus",
                                isOn: false,
                                text: "My List") {
                                    print("Tapped")
                                }
        }
    }
}
