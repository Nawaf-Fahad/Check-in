//
//  LocationListViewModel.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 23/10/2022.
//

import CloudKit

final class LocationListViewModel: ObservableObject {
    
    @Published var checkedInProfiles: [CKRecord.ID: [DDGProfile]] = [:]
    
    func getCheckedInProfilesDictionary() {
        CloudKitManager.shared.getCheckedInProfilesDictionary { result in
            DispatchQueue.main.async {
                switch result {
                    case .success(let checkedInProfiles):
                        self.checkedInProfiles = checkedInProfiles
                        print(checkedInProfiles)
                    case .failure(_):
                        print("Error getting back dictionary")
                }
            }
        }
    }
}
