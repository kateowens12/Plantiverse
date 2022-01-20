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
    var leadingOffset: CGFloat = 1
    var trailingOffset: CGFloat = 0
    var thumbSize: CGSize = CGSize(width: 44, height: 44)
    let trackGradient = LinearGradient(gradient: Gradient(colors: [.orange, .gray]), startPoint: .leading, endPoint: .trailing)

    var body: some View {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
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
                           // .offset(x: self.$value.wrappedValue.map(from: self.range, to: 0))
                            .shadow(radius: 8)
                            .gesture(
                                DragGesture(minimumDistance: 0)
                                    .onChanged { value in
                                        if abs(value.translation.width) < 0.1 {
                                            self.lastOffset = self.$value.wrappedValue.map(from: self.range, to: self.leadingOffset...(geometry.size.width - self.trailingOffset)) //- self.thumbSize.width - self.trailingOffset))
                                        }
                                        
                                        let sliderPosition = max(0 + self.leadingOffset, min(self.lastOffset + value.translation.width, geometry.size.width - self.trailingOffset))
                                        let sliderValue = sliderPosition.map(from: self.leadingOffset...(geometry.size.width - self.trailingOffset), to: self.range)
                                        self.value = sliderValue
                                    }
                            )
                            //.padding()
                    }
                }
                //.padding()
                //.padding(.vertical)
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
