//
//  Baseballgame.swift
//  baseballGame
//
//  Created by 스파르타 on 2024/03/13.
//

import Foundation


class BaseballGame {
    init() {
        start()
    }
    
    func start() {
        print("게임을 시작합니다")
        
        func makeAnswer() -> String {
            let targetNumber = (1...9).shuffled().prefix(3).map { String($0) }.joined(separator: ",")
            return targetNumber
        }
    
        let answer = makeAnswer()
    
        
        while true {
            print("숫자를 입력하세요")
            let input = readLine()!
            var strikes = 0
            var balls = 0
            
            for (index, char) in input.enumerated() {
                let digit = String(char)
                let index: String.Index = answer.index(answer.startIndex, offsetBy: 0)
                
                if digit == String(answer[index]) {
                    strikes += 1
                } else if answer.contains(String(digit)) {
                    balls += 1
                } else if input.contains("0") || Set(input).count < 3 {
                    print("올바르지 않은 입력값입니다")
                    continue
                }
            }
            
            if strikes == 3 {
                print("정답입니다!")
                break
            }  else if strikes > 0 {
                print("\(strikes)스트라이크", terminator: " ")
            } else if balls > 0 {
                print("\(balls)볼", terminator: " ")
            } else {
                print("Nothing")
            }
        
        
        }
    }
}
