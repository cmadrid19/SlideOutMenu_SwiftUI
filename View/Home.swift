//
//  Home.swift
//  SlideOutMenu
//
//  Created by Maxim Macari on 5/4/21.
//

import SwiftUI

struct Home: View {
    
    @Binding var selectedTab: String
    
    //Hidding tab bar
    init(selectedTab: Binding<String>) {
        UITabBar.appearance().isHidden = true
        self._selectedTab = selectedTab
    }
    
    var body: some View {
        
        //Tab view with tabs
        TabView(selection: $selectedTab,
                content:  {
                    HomePage()
                        .tag("Home")
                    
                    History()
                        .tag("History")
                    
                    Notifications()
                        .tag("Notifications")
                    
                    Settings()
                        .tag("Settings")
                    
                    Help()
                        .tag("Help")
                })
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomePage: View {
    var body: some View{
        NavigationView{
            VStack {
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)
                    .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("Name Surname")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("Profesional trainer at...")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                })
            }
            .navigationTitle("Home")
        }
    }
}

struct History: View {
    var body: some View{
        NavigationView{
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct Notifications: View {
    var body: some View{
        NavigationView{
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}

struct Settings: View {
    var body: some View{
        NavigationView{
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct Help: View {
    var body: some View{
        NavigationView{
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}
