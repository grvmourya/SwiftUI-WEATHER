//
//  ContentView.swift
//  SwiftUI-WEATHER
//
//  Created by Gaurav Mourya on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack{
                CityTextView(cityName: "Ranchi,Jharkhand")
                
                MainWeatherStatusView(imageName: isNight ? "moon.fill" :"cloud.sun.fill", temperature: 30)
                
                
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 29)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.rain.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "THU", imageName: "moon.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.bolt.rain.fill", temperature: 74)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day Time", textColor: .white, backgroundColor: .mint)
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

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue , isNight ? .gray : Color("LightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View{
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()    }
}

struct MainWeatherStatusView: View{
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 40)
    }
}
