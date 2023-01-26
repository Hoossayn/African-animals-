//
//  HeadingView.swift
//  Africa
//
//  Created by hoossayn on 26/01/2023.
//

import SwiftUI

struct HeadingView: View {
    
    var headingimage: String
    var headingText: String
    
    var body: some View {
        HStack {
            
            Image(systemName: headingimage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingimage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
