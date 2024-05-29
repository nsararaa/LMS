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
            
            
            Text("home")
                .tabItem{
                    (Image(systemName:"house")) }
            Text("courses")
                .tabItem{
                    (Image(systemName:"note.text"))}
            Text("Profile")
                .tabItem{
                    (Image(systemName:"person"))}
            
        }
        .foregroundColor(.black)
        .accentColor(.yellow)
        
    }
    
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        tabBar()
    }
}
