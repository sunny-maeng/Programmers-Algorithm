/*
https://school.programmers.co.kr/learn/courses/30/lessons/12930

각 단어의 홀수번째 대문자, 짝수번재 소문자
입출력 예 : "try hello world" >> "TrY HeLlO WoRlD
*/
 
import Foundation

func solution(_ s:String) -> String {
    var answer = ""
    var index = 0
    
    for character in s {
        if index % 2 == 0 {
            answer.append(character.uppercased())
            index += 1
        } else if index % 2 == 1 {
            answer.append(character.lowercased())
            index += 1
        }
        
        if character == " " {
            index = 0
        }
    }
    
    return answer
}
