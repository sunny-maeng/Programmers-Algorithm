/*
 시저암호
 https://school.programmers.co.kr/learn/courses/30/lessons/12926#
 */

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var answer = ""
    s.map {
        if $0 == " "  {
            answer.append(" ")
        } else if $0.isLowercase {
            let unicodeNum = Int($0.asciiValue!)
            let lastNum = Int(Character("z").asciiValue!)
            
            answer.append(Character(UnicodeScalar(
                unicodeNum + n >  lastNum ? (unicodeNum + n - 26) : (unicodeNum + n))!))
        } else if $0.isUppercase {
            let unicodeNum = Int($0.asciiValue!)
            let lastNum = Int(Character("Z").asciiValue!)
            
            answer.append(Character(UnicodeScalar(
                unicodeNum + n >  lastNum ? (unicodeNum + n - 26) : (unicodeNum + n))!))
        }
    }

    return answer
}

func solution2(_ s:String, _ n:Int) -> String {
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    return String(s.map {
        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
        let letter = alphabets[(index + n) % alphabets.count]
        return $0.isUppercase ? Character(letter.uppercased()) : letter
    })
}
