//
//  CKRecord+Ext.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 17/09/2022.
//

import CloudKit

extension CKRecord{
    func convertToDDGLocation() -> DDGLocation {DDGLocation(record: self)}
    func convertToDDGProfile() -> DDGProfile {DDGProfile(record: self)}
}
