//
//  AppDelegate.swift
//  RDSSDayCountdown
//
//  Created by Marcus Wu on 2018/5/15.
//  Copyright © 2018年 Marcus Wu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let button = statusItem.button {
            button.title = "test"
            button.action = #selector(printQuote(_:))
        }
        
//        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        
        
    }
//
//    @objc func updateTimer() {
//        counter = counter + 1
//
//    }
    
    @objc func printQuote(_ sender: Any?) {
        let quoteText = "Never put off until tomorrow what you can do the day after tomorrow."
        let quoteAuthor = "Mark Twain"
        
        print("\(quoteText) — \(quoteAuthor)")
    }

}

