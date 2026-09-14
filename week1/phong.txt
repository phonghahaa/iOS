//
//  ContentView.swift
//  khoi iu va tam iu phong
//
//  Created by MAY 05 on 14/9/26.
//

import SwiftUI

struct ContentView: View {
    let name = "nguyenthienphong"
    let age = 20
    let studentID = "123456789"
    var body: some View {
        ZStack{
            Color.pink
            
            VStack (spacing: 20){
                
                Image(systemName: "globe")
                Text("Hello, Swift👋").font(.largeTitle).bold(true)
                Text("my name is \(name)").font(.title2)
                Text("my age is \(age)").font(.title3)
                Text("my studentID is \(studentID)").font(.title3)
                Image("Image 1")
                    .imageScale(.small)
                    .foregroundStyle(.tint)
               
                Image(systemName: "heart")
                let heart = "❤️"
                Text("\(heart)")
                Image("Image 1")
                    
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
