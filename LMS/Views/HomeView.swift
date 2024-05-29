//
//  HomeView.swift
//  lms
//
//  Created by Sara Noor on 28/05/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        @State var color: Color = .white
        @State var date = Date.now
        ZStack{
            LinearGradient(gradient: Gradient(colors:[.white, .teal , . black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(){
                VStack(){
                    ColorPicker("", selection: $color,supportsOpacity: false).frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("Home").font(.system(size:32)).fontWeight(.semibold)
                        Text("Welcome Sara")
                        
                       
                    }
                    
                    Image("pp").resizable().scaledToFit().frame(width: 60, height:60).clipShape(Circle()).padding(.leading, 150)
                }
                .padding(.top, 10)
                .padding(.bottom, 20)
               
                VStack(){
                    Text("Announcement").font(.system(size:20)).fontWeight(.semibold).padding(.leading, -160)
                }
                Spacer()
            }
            
           
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
