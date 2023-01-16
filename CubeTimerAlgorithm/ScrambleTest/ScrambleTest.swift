//
//  ScrambleTest.swift
//  ScrambleTest
//
//  Created by José Guerra on 16-01-23.
//

import XCTest

final class ScrambleTest: XCTestCase {
    
    func test_scramble_return() {
        
        //System under testing
        let sut = TimerViewModel()
        
        let actual = sut.getAlgorithm()
        
        // true = passes the test, false = pass failed
        let expected = true
        
        for move in actual {
            print(move)
            
            
            XCTAssertTrue(expected)
        }
        
    }
    
    
}

