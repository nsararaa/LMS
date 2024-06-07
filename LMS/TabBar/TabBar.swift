//
//  tabBar.swift
//  lms
//
//  Created by Sara Noor on 23/05/2024.
//

import SwiftUI

struct tabBar: View {
    var body: some View {
        TabView{
            
            
            HomeView()
                .tabItem{
                    (Image(systemName:"house")) }
            CourseView()
                .tabItem{
                    (Image(systemName:"note.text"))}
            ProfileView()
                .tabItem{
                    (Image(systemName:"person"))}
            
        }
        .foregroundColor(.black)
        .accentColor(.black)
        
    }
    
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        tabBar()
    }
}
