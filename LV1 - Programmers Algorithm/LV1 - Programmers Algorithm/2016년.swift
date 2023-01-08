/*
 
 */
import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let day = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var calculateDays = 0
    
    for (index, day) in days.enumerated() {
        if a - 1 == index {
            calculateDays += b
            break
        }
        
        calculateDays += day
    }
    
    return day[calculateDays % 7]
}

func solution2(_ a:Int, _ b:Int) -> String {
    let w = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let monthDay = [ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let totalDay = monthDay[0..<a-1].reduce(0, +) + b

    return w[totalDay % 7]
}
