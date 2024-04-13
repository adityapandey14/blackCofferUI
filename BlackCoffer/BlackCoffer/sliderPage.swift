//
//  sliderPage.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 13/04/24.
//

import SwiftUI

struct sliderPage: View {
    @State private var value: Double = 50
    
    var body: some View {
        VStack {
            
            ZStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 80, height: 64)
                    .position(x: calculateXPosition()-5, y: 10) // Position just above the slider
                    .opacity(value <= 100 ? 1 : 0) // Keep the circle visible even if value exceeds 100
                //   .animation(.easeInOut(duration: 0.2))
                    .gesture(DragGesture()
                                .onChanged { value in
                                    updateSliderValue(value)
                                }
                    )
                
                Triangle()
                    .fill(Color.blue) // You can change the color of the triangle here
                    .frame(width: 30, height: 30) // Adjust the size of the triangle as needed
                    .rotationEffect(.degrees(180)) // Rotate the triangle to face downwards
                    .position(x: calculateXPosition()-5, y: 50) // Adjusted y position
                    .gesture(DragGesture()
                                .onChanged { value in
                                    updateSliderValue(value)
                                }
                    )
                
                
                Text("\(Int(value))") // Display slider value
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(5)
                    .clipShape(Circle())
                    .position(x: calculateXPosition()-5, y: 10) // Position just above the slider
                    .shadow(radius: 5)
               
            }
            Slider(value: $value, in: 0...100, step: 1)
            
            HStack{
                Text("1 Km")
                    .padding()
                Spacer()
                Text("\(Int(value)) Km")
                    .padding()
            }
               
            Spacer()
            
        }
    }
    
    private func calculateXPosition() -> CGFloat {
        let scaledValue = value / 100 // Scale value between 0 and 1
        let availableWidth = UIScreen.main.bounds.width - 40 // Subtract icon width
        return CGFloat(scaledValue) * availableWidth + 20 // Add 20 for padding
    }
    
    private func updateSliderValue(_ value: DragGesture.Value) {
        let newPosition = CGPoint(x: value.location.x, y: UIScreen.main.bounds.height / 2 - 40) // Position just above the slider
        let sliderValue = Double(newPosition.x - 20) / (UIScreen.main.bounds.width - 40) * 100
        self.value = min(max(sliderValue, 0), 100) // Set slider range up to 100
    }
}




#Preview {
    sliderPage()
}





//Image(systemName: "arrowtriangle.down.fill")
//     .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//     .position(x: calculateXPosition(), y: UIScreen.main.bounds.height / 2 - 3)

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}

