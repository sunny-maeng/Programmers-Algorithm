
// https://school.programmers.co.kr/learn/courses/30/lessons/86491


import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var largeWidth: Int = 0
    var largeHeight: Int = 0
    let a = sizes.map { $0.sorted(by: <) }
    a.forEach {
        if $0[0] > largeWidth {
            largeWidth = $0[0]
        }
        
        if $0[1] > largeHeight {
            largeHeight = $0[1]
        }
    }
    
    return largeWidth * largeHeight
}

//max(), min() 사용하는법
func solution2(_ sizes:[[Int]]) -> Int {
    return sizes.map{$0.max()!}.max()! * sizes.map{$0.min()!}.max()!
}
