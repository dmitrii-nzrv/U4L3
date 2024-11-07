//
//  ContentView.swift
//  U4L3
//
//  Created by Dmitrii Nazarov on 06.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack (spacing: 20){
                HStack{
                    Image(.img5)
                    Spacer()
                    Image(.img3)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(.rect(cornerRadius: 25))
                }
                ScrollView(.horizontal){
                    HStack{
                        Image(.img1)
                        Image(.img1)
                        Image(.img1)
                        Image(.img1)
                    }
                }
                HStack{
                    
                    HStack {
                        Categories(iconName: "film.fill", title: "Фильмы")
                        Categories(iconName: "dog.fill", title: "Сериалы")
                        Categories(iconName: "display", title: "Мультфильмы")
                        
                    }
                }
                
                HStack{
                    Text("Продолжить просмотр")
                        .foregroundStyle(.white)
                        .font(.system(size: 26))
                    Spacer()
                }
                
                ScrollView(.horizontal){
                    HStack{
                        Image(.img4)
                        Image(.img2)
                        Image(.img4)
                        Image(.img2)
                    }
                }
                
                HStack{
                    Text("Фильмы для вас")
                        .foregroundStyle(.white)
                        .font(.system(size: 26))
                    Spacer()
                }
                
                ScrollView(.horizontal){
                    HStack{
                        Image(.img8)
                        Image(.img7)
                        Image(.img8)
                        Image(.img7)
                    }
                }
                
            }
        }
        .padding()
        .background(Color.black)
    }
    
}

#Preview {
    ContentView()
}

struct Categories: View {
    let iconName: String
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .font(.system(size: 12))
                .foregroundColor(.white)
            Text(title)
                .font(.system(size: 12))
                .foregroundColor(.white)
        }
        .padding(12)
        .background(Color(UIColor.darkGray))
        .cornerRadius(10)
        
        
    }
    
}
