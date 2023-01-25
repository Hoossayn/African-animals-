//
//  CoverImageView.swift
//  Africa
//
//  Created by hoossayn on 25/01/2023.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")

    
    // MARK: - BODY

    var body: some View {
        TabView {
            ForEach(coverImages) { image in
                Image(image.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
