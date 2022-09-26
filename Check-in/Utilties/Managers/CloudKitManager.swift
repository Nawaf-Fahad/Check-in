//
//  CloudKitManager.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 17/09/2022.
//

import Foundation
import CloudKit

struct CloudKitManager{
    static func getLocations(completed: @escaping (Result<[DDGLocation] , Error>) -> Void){
        let sortDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                completed(.failure(error!))
                return
            }
            guard let records = records else {return}
            let locations = records.map{$0.convertToDDGLocation()}

            completed(.success(locations))

        }
    }
}
