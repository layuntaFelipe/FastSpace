//
//  PlanetListItemView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 27/05/21.
//

import SwiftUI

struct PlanetListItemView: View {
    
    let gradient = LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.5), Color.gray.opacity(0.1)]),
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)
    let planet: Planet
    
    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                Image(planet.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(planet.shadow), radius: 6, x: 0.0, y: 0.0)
                
                Text(planet.name)
                    .foregroundColor(.white)
                    .font(.system(size: 19, weight: .bold, design: .rounded))
                    
            }
        }
    }
}

struct PlanetListItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        PlanetListItemView(planet: planets[2])
            .previewLayout(.fixed(width: 150, height: 200))
            .background(Color.clear)
    }
}
