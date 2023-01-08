// https://school.programmers.co.kr/learn/courses/30/lessons/81301

import Foundation

func solution(_ s:String) -> Int {
    var answerWord:String = s
    let numberDictionary = ["one": "1", "two": "2", "three": "3", "four": "4", "five": "5",
                            "six": "6", "seven": "7", "eight": "8", "nine": "9", "zero": "0"]

    for (numString, num) in numberDictionary {
        answerWord = answerWord.replacingOccurrences(of: numString, with: num)
    }
    
    return Int(answerWord)!
}
