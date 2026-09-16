//
//  ContentView.swift
//  lab1
//
//  Created by MAY 05 on 14/9/26.
//

import SwiftUI

struct ContentView: View {
    let StudentName = "Nguyen Thien Phong"
    let StudentID = "SESEIU24021"
    let age = "20"
    let GPA = "4.0"
    let isstudent = "true"
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.blue.opacity(0.15), Color.white, Color.green.opacity(0.08)
                                   ],
                           startPoint: .top, endPoint: .bottom)
            
            .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20) {
                    ZStack {
                        Circle()
                            .fill(Color.blue.opacity(0.08))
                            .frame(width: 150, height: 150)
                        
                        Image(systemName: "graduationcap.fill")
                            .font(.system(size: 70))
                            .foregroundStyle(Color.blue, Color.yellow)
                    } .padding(.top, 25)
                    Text("Student Profile").font(.largeTitle).bold()
                    Label("Name: \(StudentName)", systemImage: "person.fill").foregroundStyle(.cyan)
                    Label("ID: \(StudentID)", systemImage: "person.text.rectangle.fill").foregroundStyle(.blue)
                    Label("Age: \(age)", systemImage: "person.crop.circle.fill").foregroundStyle(.pink)
                    Label("GPA: \(GPA)", systemImage: "star.fill").foregroundStyle(.purple)
                    Label("Student: \(isstudent)", systemImage: "checkmark.seal.fill").foregroundStyle(.indigo)
  
                }
            }
        
        }
        .padding(2)
        
    }
}

#Preview {
    ContentView()
}
