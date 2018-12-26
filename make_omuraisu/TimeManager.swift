//
//  TimeManager.swift
//  make_omuraisu
//
//  Created by 中野湧仁 on 2018/12/26.
//  Copyright © 2018年 中野湧仁. All rights reserved.
//

import UIKit
import Foundation

class TimeManager {
    private let formatter = DateFormatter()
    private let date = Date()
    private var dateStr: String?
    private let calendar = Calendar(identifier: .gregorian)
    
    init(){
        formatter.timeZone = TimeZone.ReferenceType.local
        formatter.dateFormat = "yyyy-MM-dd-HH-mm-ss"
        dateStr = ""
    }
    //設定したカウントダウンの秒数を返してくれます
    func getXmaxTimeInterval() -> Int {
        guard let xmas = calendar.date(from: DateComponents(year: 2016, month: 12, day: 25)) else { return 0}
        let spanFromWow = xmas.timeIntervalSinceNow
        return Int(floor(spanFromWow))
    }
}

