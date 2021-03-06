//
//  HeadingView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 27/05/21.
//

import SwiftUI

struct HeadingView: View {
    
    var headingImage: String
    var headingText: String
    var color: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(Color(color))
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Emptyness in Pictures", color: "venus-shadow")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
