//
//  DateExtension.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 30/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import Foundation


extension Date {
    var defaultFormatLocale: String {
        let categoriaDateFormatted = DateFormatter()
    
        categoriaDateFormatted.locale = Locale(identifier: defaultDateLocale)
        categoriaDateFormatted.dateFormat = defaultDateFormat
        
        return categoriaDateFormatted.string(from: self)
    }
    
    func toFormattedString(with format: String = defaultDateFormat,
                           locale: String = defaultDateLocale) -> String {
        let categoriaDateFormatted = DateFormatter()
        categoriaDateFormatted.locale = Locale(identifier: locale)
        categoriaDateFormatted.dateFormat = format
        
        return categoriaDateFormatted.string(from: self)
    }
}
