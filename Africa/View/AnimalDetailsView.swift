//
//  AnimalDetailsView.swift
//  Africa
//
//  Created by hoossayn on 26/01/2023.
//

import SwiftUI

struct AnimalDetailsView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                
                Text(animal.name.uppercased())
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
                
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                
                Group {
                    HeadingView(headingimage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingimage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingimage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                
                .padding(.horizontal)
                
                
                Group {
                    HeadingView(headingimage: "map", headingText: "National Parks")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView (headingimage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }
       
    }
}

struct AnimalDetailsView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        NavigationView{
            AnimalDetailsView(animal: animals[3])
        }
    }
}
