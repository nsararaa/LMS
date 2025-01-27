//
//  ProfileView.swift
//  lms
//
//  Created by Sara Noor on 23/05/2024.
//

import SwiftUI
//import SQLite3

struct ProfileView: View {
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors:[.white]), startPoint: .topLeading, endPoint: .bottomTrailing)

                .ignoresSafeArea()
            VStack{
                HStack{
                    Image("pp").resizable().scaledToFit().frame(width: 120, height:120).clipShape(Circle())
                }
                VStack{
                    
                    //Int(CInt());
                
                   
                    Text(String(cString: returnName())).font( .system(size:19)).fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.vertical, 1)
                    
                    
                    Text("bscs23162@itu.edu.pk").font(.system(size:15)).fontWeight(.medium)
                    
                    
                    
                }
                .padding(.horizontal)
                .frame(maxWidth:.infinity, alignment: .center)
                
               Divider()
                Spacer()
            }
           
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
