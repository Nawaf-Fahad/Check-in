//
//  DDGProfile.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 14/09/2022.
//

import CloudKit

struct DDGProfile{
    static let kFirstName   = "firstname"
    static let kLastName    = "lastname"
    static let kAvater      = "avater"
    static let kCompanyName = "company"
    static let kBio         = "bio"
    static let kIsCheckedIn = "isCheckedIn"

    
    let ckRecordID  : CKRecord.ID
    let firstname   : String
    let lastname    : String
    let avater      : CKAsset!
    let companyName : String
    let bio         : String
    let isCheckedIn : CKRecord.Reference? = nil

    
    init(record: CKRecord) {
        ckRecordID       = record.recordID
        firstname        = record[DDGProfile.kFirstName] as? String ?? "N/A"
        lastname         = record[DDGProfile.kLastName] as? String ?? "N/A"
        avater           = record[DDGProfile.kAvater] as? CKAsset
        companyName      = record[DDGProfile.kCompanyName] as? String ?? "N/A"
        bio              = record[DDGProfile.kBio] as? String ?? "N/A"

    }
}
