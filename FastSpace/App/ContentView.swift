//
//  ContentView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 26/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var viewPlanet: Planet = planets[0]
    
    var body: some View {
        NavigationView {
            ZStack{
                MotionSpaceView()
                VStack {
                    Text("Dicover the infinite of the universe".uppercased())
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.top,70)
                        .padding(.horizontal,26)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHGrid(rows: [GridItem(.flexible())], spacing: 20, content: {
                            ForEach(planets) {planet in
                                Button(action: {
                                    viewPlanet = planet
                                }, label: {
                                    PlanetListItemView(picked: false, planet: planet)
                                        .padding(.leading, 26)
                                })
                            }//LOOP
                        })//LAZY
                        .frame(height: 100)
                        .padding(.top, 10)
                    })//SCROLL
                    TestView(planet: viewPlanet)
                        .padding(.horizontal, 26)
                        .padding(.top, 40)
                    
                    Spacer()
                }//VSTACK
            }//ZSTACK
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        }//NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//ForEach(planets) {planet in
//    NavigationLink(destination: PlanetDetailView(planet: planet)){
//        PlanetListItemView(planet: planet)
//            .padding(.leading)
//    }
//}//LOOP

//                    CoverImageView()
//                        .frame(width: .infinity, height: 300)
//                        .padding(.top, 30)

//                    LazyVGrid(columns: gridLayout, spacing: 15, content: {
//                        ForEach(planets) {planet in
//                            NavigationLink(destination: PlanetDetailView(planet: planet)){
//                                PlanetListItemView(planet: planet)
//                                    .padding(.leading)
//                            }
//                        }
//                    })
//                    .padding(.trailing)
