//
//  ContentView.swift
//  SwiftUI-WEATHER
//
//  Created by Gaurav Mourya on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Ranchi, Jharkhand")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack{
                    Image(systemName: "cloud.sun.rain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                        
                    Text("26°C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }.padding(.bottom, 40)
                
                
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 29)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.rain.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "THU", imageName: "moon.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.bolt.rain.fill", temperature: 74)
                }
                Spacer()
            }
        }

    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium,design: .default))
                .foregroundColor(.white )
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
