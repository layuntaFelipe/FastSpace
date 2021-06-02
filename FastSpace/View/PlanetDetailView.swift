//
//  PlanetDetailView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 27/05/21.
//

import SwiftUI

struct PlanetDetailView: View {
    
    let planet: Planet
    
    @Binding var test: Bool
    
    var body: some View {
        ZStack {
            MotionSpaceView()
            ScrollView(.vertical, showsIndicators: false, content: {
                ZStack(alignment: .topTrailing){
                    Image(planet.image)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .padding(.top,30)
                    
                    Button(action: {
                        test.toggle()
                    }, label: {
                        Image(systemName: "arrow.down.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding()
                            .padding(.top,30)
                    })
                    .foregroundColor(.white)
                }
                
                Text(planet.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    .background(
                        Color(planet.shadow)
                            .frame(height: 6)
                            .offset(y: 12)
                    )
                
                Text(planet.headline)
                    .font(.headline)
                    .foregroundColor(Color.primary)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 26)
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Unknow Beautifulness", color: planet.shadow)
                    
                    InsetGalleryView(planet: planet)
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did You Know ?", color: planet.shadow)
                    
                    InsetFactView(planet: planet)
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(planet.name)", color: planet.shadow)
                    
                    Text(planet.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More", color: planet.shadow)
                    
                    ExternalWebLinkView(planet: planet, color: planet.shadow)
                }
                .padding(.horizontal)
                    
            })//SCROLL
            .background(
                Color.gray.opacity(0.2)
            )
        }//ZSTACK
        .edgesIgnoringSafeArea(.top)
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        PlanetDetailView(planet: planets[0], test: .constant(false))
    }
}
