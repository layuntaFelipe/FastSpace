//
//  ContentView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 26/05/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack{
                MotionSpaceView()
                ScrollView(.vertical, showsIndicators: false, content: {
                    CoverImageView()
                        .frame(width: .infinity, height: 300)
                        .padding(.top, 30)
                    
                    ForEach(planets) {planet in
                        NavigationLink(destination: PlanetDetailView(planet: planet)){
                            PlanetListItemView(planet: planet)
                                .padding(.leading)
                        }
                    }   
                })
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }//NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
