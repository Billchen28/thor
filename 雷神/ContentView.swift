//
//  ContentView.swift
//  雷神
//
//  Created by 陈就标 on 2022/3/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var locationManager = LocationManager()
    var time: String {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "HH:mm"
        let timestr = dateformatter.string(from: Date())
        return timestr
    }
    var speed: String { return locationManager.speed }
    var speedColor: Color { return locationManager.speedColor }
    var speedAccuracy: String { return locationManager.speedAccuracy }
    let plusMinus = "\u{00B1}"

    var body: some View {
        VStack {
            VStack {
                Text(time)
                    .foregroundColor(speedColor)
                    .font(.system(size: 150, design: .rounded))
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
                Text(speed)
                    .foregroundColor(speedColor)
                    .font(.system(size: 350, design: .rounded))
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
                Text("mi/h")
                    .font(.system(size: 50, design: .rounded))
                    .padding(.bottom)
                Text("Error: \(plusMinus)\(speedAccuracy) mi/h")
                    .font(.system(size: 20, design: .rounded))
                    .padding(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
