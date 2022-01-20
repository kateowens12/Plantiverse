//
//  WindowDistanceSlider.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/19/22.
//

import SwiftUI

struct CustomSlider: View {
    @State var lastOffset: CGFloat = 0
    @Binding var value: CGFloat
    var range: ClosedRange<CGFloat> = 1...10
    var leadingOffset: CGFloat = 2
    var trailingOffset: CGFloat = 12
    var thumbSize: CGSize = CGSize(width: 44, height: 44)
    let trackGradient = LinearGradient(gradient: Gradient(colors: [.orange, .gray]), startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(minHeight: 44)
                    .foregroundStyle(self.trackGradient)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(.clear)
                            .shadow(color: .black, radius: 5)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                    )
                
                HStack {
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: self.thumbSize.width, height: self.thumbSize.height)
                        .foregroundColor(.white)
                        .offset(x: lastOffset)
                        .shadow(radius: 8)
                        .gesture(
                            DragGesture(minimumDistance: 0)
                                .onChanged { value in
                                    if value.location.x >= 0 && value.location.x <= geometry.size.width - self.thumbSize.width {
                                        self.lastOffset = value.location.x
                                        let sliderPosition = max(0 + self.leadingOffset, min(self.lastOffset + value.translation.width, geometry.size.width - self.trailingOffset))
                                        let sliderValue = sliderPosition.map(from: self.leadingOffset...(geometry.size.width - self.trailingOffset), to: self.range)
                                        self.value = sliderValue
                                    }
                                }
                        )
                }
            }
            //TODO: find out if a11y representation is added here or on the entire window distance slider view
        }
    }
}

extension CGFloat {
    func map(from startPoint: ClosedRange<CGFloat>, to endPoint: ClosedRange<CGFloat>) -> CGFloat {
        let startRangeLowerBound = startPoint.lowerBound
        print("startRangeLowerBound --> \(startRangeLowerBound)")
        let startRangeUpperBound = startPoint.upperBound
        print("startRangeUpperBound --> \(startRangeUpperBound)")
        let endRangeUpperBound = endPoint.upperBound
        print("endRangeUpperBound --> \(endRangeUpperBound)")
        let endRangeLowerBound = endPoint.lowerBound
        print("endRangeLowerBound --> \(endRangeLowerBound)")
        
        let result = ((self - startRangeLowerBound) / (startRangeUpperBound - startRangeLowerBound)) * (endRangeUpperBound - endRangeLowerBound) + endRangeLowerBound
        print(result)
        
        return result
        
    }
}
//struct WindowDistanceSlider_Previews: PreviewProvider {
//    static var previews: some View {
//        WindowDistanceSlider()
//    }
//}
