//
//  HomeScreen.swift
//  Task 4
//
//  Created by Ogabek Matyakubov on 25/11/22.
//

import SwiftUI

struct HomeScreen: View {
    
    var columns:[GridItem] = Array(repeating: .init(.fixed(UIScreen.width/2)), count: 2)
    
    var body: some View {
        
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach((0...22), id: \.self) { item in
                    LazyVStack {
                        Image("img").resizable().scaledToFit()
                        Text("Title \(item)").padding()
                    }
                    .frame(width: UIScreen.width / 2, height: UIScreen.width / 2).background(Color(uiColor: UIColor.darkGray))
                }
            }
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
