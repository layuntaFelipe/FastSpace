//
//  ContentView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 26/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var viewPlanet: Planet = planets[0]
    
    @State var test: Bool = false
    
    var body: some View {
        NavigationView {
            if !test {
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
                                        PlanetListItemView(planet: planet)
                                            .padding(.leading, 26)
                                    })
                                }//LOOP
                            })//LAZY
                            .frame(height: 100)
                            .padding(.top, 10)
                        })//SCROLL
                        TestView(planet: viewPlanet, test: $test)
                            .padding(.top, 40)
                    }//VSTACK
                }//ZSTACK
                .edgesIgnoringSafeArea(.top)
                .navigationBarHidden(true)
            } else {
                PlanetDetailView(planet: viewPlanet, test: $test)
            }
        }//NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
