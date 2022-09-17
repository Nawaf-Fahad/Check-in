//
//  MockData.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 14/09/2022.
//

import ClockKit
import CloudKit
struct MockData{
    static var location: CKRecord{
        let record = CKRecord(recordType: RecordType.location)
        
        record[DDGLocation.kName]           = "Nawaf Restuarants"
        record[DDGLocation.kAddress]        = "123 Main Street"
        record[DDGLocation.kDescription]    = "This description for testing purposes"
        record[DDGLocation.kWebsiteURL]     = "https://www.apple.com"
        record[DDGLocation.kPhoneNumber]    = "966550272298"
        record[DDGLocation.kLocation]       =  CLLocation(latitude: 24.723445, longitude: 46.622971)
        
        return record
    }
}
