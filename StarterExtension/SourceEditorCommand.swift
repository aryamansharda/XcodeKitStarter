//
//  SourceEditorCommand.swift
//  StarterExtension
//
//  Created by Aryaman Sharda on 10/12/23.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        // Adds "Hello, world!" as the first line in the file.
        invocation.buffer.lines.insert("Hello, world!", at: 0)
        completionHandler(nil)
    }
    
}
