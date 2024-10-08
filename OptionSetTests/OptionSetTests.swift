//
//  OptionSetTests.swift
//  OptionSetTests
//
//  Created by Gab on 2024/10/02.
//

import XCTest
@testable import OptionSet

final class OptionSetTests: XCTestCase {
    
    var exerciseOption = ExerciseOptions()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testOneStep() throws {
        exerciseOption.formUnion([.soccer, .hockey])
        print(exerciseOption.stringValue)
        print("상갑 logEvent \(#function) exerciseOption: \(exerciseOption)")
        print("상갑 logEvent \(#function) exerciseOption: \(exerciseOption.stringValue)")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    
    override func tearDown() {
        exerciseOption.clearAll()
    }

}

private enum ExerciseEnum: String {
    case soccer = "Soccer"
}

struct ExerciseOptions: OptionSet {
    let rawValue: Int
    
    static let soccer       = ExerciseOptions(rawValue: 1 << 0)
    static let baseball     = ExerciseOptions(rawValue: 1 << 1)
    static let taekwondo    = ExerciseOptions(rawValue: 1 << 2)
    static let karate       = ExerciseOptions(rawValue: 1 << 3)
    static let yoga         = ExerciseOptions(rawValue: 1 << 4)
    static let kickboxing   = ExerciseOptions(rawValue: 1 << 5)
    static let climbing     = ExerciseOptions(rawValue: 1 << 6)
    static let running      = ExerciseOptions(rawValue: 1 << 7)
    static let golf         = ExerciseOptions(rawValue: 1 << 8)
    static let cycling      = ExerciseOptions(rawValue: 1 << 9)
    static let ski          = ExerciseOptions(rawValue: 1 << 10)
    static let kayak        = ExerciseOptions(rawValue: 1 << 11)
    static let tennis       = ExerciseOptions(rawValue: 1 << 12)
    static let bowling      = ExerciseOptions(rawValue: 1 << 13)
    static let tableTennis  = ExerciseOptions(rawValue: 1 << 14)
    static let basketball   = ExerciseOptions(rawValue: 1 << 15)
    static let fencing      = ExerciseOptions(rawValue: 1 << 16)
    static let football     = ExerciseOptions(rawValue: 1 << 17)
    static let jogging      = ExerciseOptions(rawValue: 1 << 18)
    static let volleyball   = ExerciseOptions(rawValue: 1 << 19)
    static let hockey       = ExerciseOptions(rawValue: 1 << 20)
    static let iceHockey    = ExerciseOptions(rawValue: 1 << 21)
    static let training     = ExerciseOptions(rawValue: 1 << 22)
    static let swimming     = ExerciseOptions(rawValue: 1 << 23)
    static let crossfit     = ExerciseOptions(rawValue: 1 << 24)
    static let meditaton    = ExerciseOptions(rawValue: 1 << 25)
    static let sportsDance  = ExerciseOptions(rawValue: 1 << 26)
    static let horseRiding  = ExerciseOptions(rawValue: 1 << 27)
    static let skating      = ExerciseOptions(rawValue: 1 << 28)
    
    
    static let all: ExerciseOptions = [
        .soccer,
        .baseball,
        .taekwondo,
        .karate,
        .yoga,
        .kickboxing,
        .climbing,
        .running,
        .golf,
        .cycling,
        .ski,
        .kayak,
        .tennis,
        .bowling,
        .tableTennis,
        .basketball,
        .fencing,
        .football,
        .jogging,
        .volleyball,
        .hockey,
        .iceHockey,
        .training,
        .swimming,
        .crossfit,
        .meditaton,
        .sportsDance,
        .horseRiding,
        .skating
    ]
    
    mutating func clearAll() {
        self = self.intersection([.all])
    }
}

extension ExerciseOptions {
    var stringValue: String {
        switch self {
        case .soccer:       return "Soccer"
        case .baseball:     return "Baseball"
        case .taekwondo:    return "Taekwondo"
        case .karate:       return "Karate"
        case .yoga:         return "Yoga"
        case .kickboxing:   return "Kickboxing"
        case .climbing:     return "Climbing"
        case .running:      return "Running"
        case .golf:         return "Golf"
        case .cycling:      return "Cycling"
        case .ski:          return "Ski"
        case .kayak:        return "Kayak"
        case .tennis:       return "Tennis"
        case .bowling:      return "Bowling"
        case .tableTennis:  return "Table Tennis"
        case .basketball:   return "Basketball"
        case .fencing:      return "Fencing"
        case .football:     return "Football"
        case .jogging:      return "Jogging"
        case .volleyball:   return "Volleyball"
        case .hockey:       return "Hockey"
        case .iceHockey:    return "Ice Hockey"
        case .training:     return "Training"
        case .swimming:     return "Swimming"
        case .crossfit:     return "Crossfit"
        case .meditaton:    return "Meditaton"
        case .sportsDance:  return "Sports dance"
        case .horseRiding:  return "Horse riding"
        case .skating:      return "Skating"
        default:            return ""
        }
    }
    
    var description: [String] {
        
        return []
    }
}

protocol Option: RawRepresentable, Hashable, CaseIterable, CustomStringConvertible {}

enum Topping: String, Option {
    case kimchi
    
    var description: String {
        return self.rawValue
    }
}

extension Set where Element == Topping {
    static var hi: Set<Topping> {
        
        return [.kimchi]
    }
}
