//
//  PlanetDetailView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 27/05/21.
//

import SwiftUI

struct PlanetDetailView: View {
    
    let planet: Planet
    
    var body: some View {
        ZStack {
            MotionSpaceView()
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .center, spacing: 20) {
                    //HERO IMAGE
                    Image(planet.image)
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    //TITLE
                    Text(planet.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)
                        .background(
                            Color.accentColor
                                .frame(height: 6)
                                .offset(y: 24)
                        )
                    //HEADLINE
                    Text(planet.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.accentColor)
                        .padding(.horizontal)
                    //GALLERY
                    Group{
                        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Emptyness in Pictures")
                        
                        InsetGalleryView(planet: planet)
                    }
                    .padding(.horizontal)
                    //FACTS
                    //DESCRIPTION
                    //LINK
                }//VSTACK
                .navigationBarTitle("Learn About \(planet.name)", displayMode: .inline)
            })//SCROLL
        }//ZSTACK
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            PlanetDetailView(planet: planets[0])
        }
    }
}