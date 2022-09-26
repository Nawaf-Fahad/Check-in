//
//  CKAsset+Ext.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 21/09/2022.
//

import CloudKit
import UIKit

extension CKAsset{
    func converToUIImage(in dimension:ImageDimension) ->UIImage{
        let placeholder = ImageDimension.getPlaceholder(for: dimension)
        
        guard let fileUrl = self.fileURL else {return placeholder}
        
        do{
            let data = try Data(contentsOf: fileUrl)
            return UIImage(data: data) ?? placeholder
        } catch{
            return placeholder
        }
        
    }
}
