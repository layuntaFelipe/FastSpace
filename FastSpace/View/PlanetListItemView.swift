//
//  PlanetListItemView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 27/05/21.
//

import SwiftUI

struct PlanetListItemView: View {
    
    let planet: Planet
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(planet.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(planet.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(planet.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
            Spacer()
        }//HSTACK
    }
}

struct PlanetListItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        PlanetListItemView(planet: planets[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
