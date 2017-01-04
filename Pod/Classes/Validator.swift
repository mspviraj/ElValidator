//
//  ELVValidator.swift
//  Pods
//
//  Created by Victor Carmouze on 30/11/2015.
//
//

import Foundation

public enum ValidatorError: Error {
    case textTooLong
    case textNotInList
    case textDoNotMatchRegex
    case dateInferiorToMinDate
    case dateSuperiorToMaxDate
    case dateFormatIsNotCorrect
}

public struct ValidatorEvents: OptionSet {
    public let rawValue: Int

    static let None                                 = ValidatorEvents(rawValue: 0)
    public static let validationPerCharacter        = ValidatorEvents(rawValue: 1 << 0)
    public static let validationAtEnd               = ValidatorEvents(rawValue: 1 << 1)
    public static let validationAllowBadCharacters  = ValidatorEvents(rawValue: 1 << 2)

    public init(rawValue:Int) {self.rawValue = rawValue}
}

open class Validator {
    open var validationEvent = ValidatorEvents.validationAtEnd

    open func validate(value: String) throws {
        print("To override")
    }

    public init(validationEvent:ValidatorEvents) {
        self.validationEvent = validationEvent
    }
}
