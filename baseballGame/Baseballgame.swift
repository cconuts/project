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
        while true { // 예시
            print("환영합니다! 원하시는 번호를 입력해주세요.\n1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기")
            
            let choice = readLine()!
            
            
            switch choice {
            case "1":
                print("게임을 시작합니다")
                playGame()
            case "2":
                print("게임 기록")
            case "3":
                print("게임을 종료합니다") //Exiting the game
                return
            default:
                print("잘못된 입력입니다. 다시 시도해주세요.")
            }
        }
    }
    
    func playGame() {
        let number = makeAnswer()
    }
    
    func makeAnswer() -> String {
        var answer = ""
        
        while true {
            let targetNumber = (0...9).shuffled().prefix(3).map { String($0) }
            guard targetNumber[0] != String(0) else {
                
                continue
            }
            
            answer = targetNumber.joined()
            print(answer)
            
            while true {
                print("\n숫자를 입력하세요")
                let input = readLine()!
                var strikes = 0
                var balls = 0
                
                for (index, char) in input.enumerated() {
                    let digit = String(char)
                    let answerIndex: String.Index = answer.index(answer.startIndex, offsetBy: index)
                    let answerDigit = String(answer[answerIndex])
                    
                    if [digit] == answerDigit.map({String($0)}) {
                        strikes += 1
                    } else if answer.contains(String(digit)) {
                        balls += 1
                    } else if Set(input).count < 4 {
                        print("올바르지 않은 입력값입니다")
                        
                    }
                }
                
                if strikes == 3 {
                    print("정답입니다!")
                    break
                }  else if strikes > 0 {
                    print("\(strikes)스트라이크", terminator: " ")
                    continue
                } else if balls > 0 {
                    print("\(balls)볼", terminator: " ")
                } else {
                    print("Nothing")
                }
                
                
            }
            return "숫자 야구 게임"
        }
        
        
        
        
        
        
    }
    
}
