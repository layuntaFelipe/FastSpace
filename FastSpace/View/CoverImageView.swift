//
//  CoverImageView.swift
//  FastSpace
//
//  Created by Felipe Lobo on 26/05/21.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")

    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }//LOOP
        }//TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
            .background(Color.white)
    }
}
