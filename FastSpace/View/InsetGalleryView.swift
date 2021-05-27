//
//  InsetGalleryView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 27/05/21.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let planet: Planet
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(planet.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        InsetGalleryView(planet: planets[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
