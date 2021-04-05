//
//  Home.swift
//  SlideOutMenu
//
//  Created by Maxim Macari on 5/4/21.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedTab: String = "Home"
    @State var showMenu: Bool = false
    //Animation namespace
    @Namespace var animation
    
    
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            Menu(selectedTab: $selectedTab)
            
            ZStack {
                Color.white
                    .opacity(0.5)
                    .cornerRadius(showMenu ? 15 : 0)
                    // shadow
                    .shadow(color: Color.black.opacity(0.7), radius: 5, x: -5, y: 0)
                    .offset(x: showMenu ? -25 : 0)
                    .padding(.vertical, 30)
                
                Color.white
                    .opacity(0.4)
                    .cornerRadius(showMenu ? 15 : 0)
                    // shadow
                    .shadow(color: Color.black.opacity(0.7), radius: 5, x: -5, y: 0)
                    .offset(x: showMenu ? -50 : 0)
                    .padding(.vertical, 60)
                
                //two banckground cads
                Home(selectedTab: $selectedTab)
                    .cornerRadius(showMenu ? 15 : 0)
            }
            //Scaling and moving the view
            .scaleEffect(showMenu ? 0.84 : 1)
            .offset(x: showMenu ? getRect().width - 120 : 0)
            .ignoresSafeArea()
            .overlay(
                Button(action: {
                    withAnimation(.spring()){
                        showMenu.toggle()
                    }
                }, label: {
                    //Animation Drawer Button
                    VStack(spacing: 5){
                        Capsule()
                            .fill(showMenu ? Color.white : Color.primary)
                            .frame(width: 30, height: 3)
                            .rotationEffect(.init(degrees: showMenu ? -50 : 0))
                            .offset(x: showMenu ? 2 : 0, y: showMenu ? 9 : 0)
                        
                        VStack(spacing: 5){
                            Capsule()
                                .fill(showMenu ? Color.white : Color.primary)
                                .frame(width: 30, height: 3)
                            
                            //Moving up when clicked
                            
                            Capsule()
                                .fill(showMenu ? Color.white : Color.primary)
                                .frame(width: 30, height: 3)
                                .offset(y: showMenu ? -8 : 0)
                        }
                        .rotationEffect(.init(degrees: showMenu ? 50 : 0))
                    }
                })
                .padding()
                ,alignment: .topLeading
            )
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Extending view to get screen size
extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
