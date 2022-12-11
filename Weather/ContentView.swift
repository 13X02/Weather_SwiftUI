//
//  ContentView.swift
//  Weather
//
//  Created by Abhijith H on 09/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.blue,Color("lightBlue")]),
                startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack{
                Text("Kottarakara, Kerala")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    Text("76°")
                        .font(.system(size:70,weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom,50)
                HStack(spacing: 20){
                    WeatherDayView(
                        dayOfWeek: "TUE", imageName: "cloud.rain.fill", temperature: 35)
                    WeatherDayView(
                        dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 45)
                    WeatherDayView(
                        dayOfWeek: "THU", imageName: "wind.snow", temperature: 55)
                    WeatherDayView(
                        dayOfWeek: "FRI", imageName: "snow", temperature: 65)
                    WeatherDayView(
                        dayOfWeek: "SAT", imageName: "sunset.fill", temperature: 75)
                    
                }
                Spacer()
                Button{
                    print("tapped")
                }label: {
                    Text("Change Day Time")
                        .frame(width: 300,height: 60)
                        .background(Color.white)
                        .font(.system(size: 20,weight: .bold,design: .default))
                        .cornerRadius(10)
                }
                Spacer()
                
            }
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
