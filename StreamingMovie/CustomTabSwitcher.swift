//
//  CustomTabSwitcher.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 15/12/21.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var tabs: [CustomTab]
    
    func widthFoTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight:
                                                            .bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            
                            Rectangle()
                                .frame(width: widthFoTab(tab), height: 6)
                            Button(action: {
                                
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                            })
                            
                        }
                    }
                }
            }
            
            Text("SELECTED VIEW")
        }
        .foregroundColor(.white)

    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
    }
}


extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
