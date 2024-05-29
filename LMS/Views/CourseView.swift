//
//  CourseView.swift
//  lms
//
//  Created by Sara Noor on 29/05/2024.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let act: () -> Void
    
    var body: some View {
        Button(action: act) {
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding()
                .frame(minWidth: 150, minHeight: 150)
        }
        .buttonStyle(.borderedProminent)
        .tint(.white)
    }
}

struct CourseView: View {
    var pad : CGFloat = 16
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors:[.white, .teal, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            .ignoresSafeArea()
            VStack(alignment: .leading) {
                
                Image(systemName: "arrow.backward").resizable()
                    .frame(width: 27, height: 20)
                    .aspectRatio(contentMode: .fill)
                    .padding(.leading,pad)
                    
                    .onTapGesture {}
                
                Text("My Courses")
                    .font(.system(size: 26))
                    .fontWeight(.bold)
                    .padding(.leading, pad)
                    .padding(.bottom, 30)
                    
                VStack{
                    HStack{
                        CustomButton(title:"OOP"){
                            //action
                        }
                        .padding(.leading,14)
                        
                        CustomButton(title:"Probability & Statistic"){
                            //action
                        }
                        .padding(.leading,10)
                    }
                    .padding(.bottom, 20)
                    HStack{
                        CustomButton(title:"Linear Algebra"){
                            //action
                        }
                        .padding(.leading,14)
                        
                        CustomButton(title:"Database"){
                            //action
                        }
                        .padding(.leading,10)
                    }
                    .padding(.bottom, 20)
                    HStack{
                        CustomButton(title:"DLD"){
                            //action
                        }
                        .padding(.leading,14)
                        
                        CustomButton(title:"Computer Networks"){
                            //action
                        }
                        .padding(.leading,10)
                    }
                    .padding(.bottom, 70)
                }
           
            }
            .frame(maxWidth: .infinity, alignment: .leading)
           
               
            
            VStack{
                
            }
            Spacer()
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}
