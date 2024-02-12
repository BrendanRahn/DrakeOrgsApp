//
//  ContentView.swift
//  Shared
//
//  Created by Blythe Kelly on 2/12/24.
//

import SwiftUI

struct CircleView: View {
    @State var label: String
    @State private var searchText = ""
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 90.0, height: 80.0)
            Text(label).foregroundColor(.white)
        }
    }
}

struct RectangleView: View {
    @State var label: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 300.0, height: 80.0)
            Text(label).foregroundColor(.white)
        }
    }
}
let interests=["Academic","Governing","Honors", "Media", "Cultural", "PanHellenic", "Professional", "Religious", "Social", "Special Interest", "Sports"]
let studentOrgs=[
                 "American College of Pharmaceutical Scientists, Student Chapter",
                 "Academy of Managed Care Pharmacy",
                "CBPA Ambassadors",
                "Chemistry Club",
                "CPHS Ambassadors",
                "DATA Club",
                "Drake Math Club",
                "Drake Pharmacy United Group of Students (DRxUGS)",
                "Drake University Occupational Therapy (DUSOTA)",
                 "Drake Simulation League",
                "Honors Program Student Council",
                "Investment Club",
                "Pre-Med Club",
                "Society of Physics Students",
                "Student Leadership Advisory Panel",
                "Women in STEM"]
struct ContentView: View {
    var body: some View {
        VStack {
            Divider()
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<10) { index in
                        CircleView(label:interests[index])
                    }
                }.padding()
            }.frame(height: 100)
            .position(x: 200, y: 90)
            Divider()
            Spacer()
            
        VStack{
            Divider()
            ScrollView() {
                VStack(spacing: 10) {
                    ForEach(0..<10) { index in
                        RectangleView(label:(studentOrgs[index]))
                    }
                }.padding()
            }.frame(height: 600)
            Divider()
            Spacer()
            }
            
        }

    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
