//
//  BestAlbum.swift
//  Programmers
//
//  Created by won soohyeon on 2021/08/29.
//

import Foundation

class BestAlbum {
    
    static let instance: BestAlbum = BestAlbum()
    
    func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
            var dic =  [String: [[Int]]]()

        genres.enumerated().forEach { (index, element) in
            if dic[element] == nil {
                dic[element] = [[index, plays[index]]]
            } else {
                dic[element]! += [[index, plays[index]]]
            }
        }
        print("dic.values : ", dic.values)
        let arr = Array(dic.values)
            .sorted {
                ($0.reduce(0) { $0 + $1[1] }) > ($1.reduce(0) { $0 + $1[1] })
            }
        print("arr : ",arr)

        return Array(dic.values)
                .sorted {
                    ($0.reduce(0) { $0 + $1[1] }) > ($1.reduce(0) { $0 + $1[1] })
                }
                .flatMap {
                    $0.sorted { $0[1] > $1[1] }.map { $0[0] }.prefix(2)
                }
    }

}
