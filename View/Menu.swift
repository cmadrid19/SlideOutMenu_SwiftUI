//
//  Menu.swift
//  SlideOutMenu
//
//  Created by Maxim Macari on 5/4/21.
//

import SwiftUI

struct Menu: View {
    
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        //Side menu
        VStack(alignment: .leading, spacing: 15, content: {
          Image(systemName: "person")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 70, height: 70)
            .cornerRadius(10)
            .padding(.top, 50)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Name Surname")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Button(action: {
                    
                }, label: {
                    Text("Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                })
            })
            
            //Tab button
            VStack(alignment: .leading, spacing: 10){
                TabButton(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "clock.arrow.circlepath", title: "History", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "bell.badge", title: "Notifications", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "gearshape.fill", title: "Settings", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, animation: animation)
            }
            .padding(.leading, -15)
            .padding(.top, 50)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 6, content: {
                //Sign out button
                TabButton(image: "rectangle.righthalf.inset.fill.arrow.right", title: "Log out", selectedTab: .constant(""), animation: animation)
                    .padding(.leading, -15)
                
                Text("© App version 1.2.34")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.6)
            })
         
            
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
