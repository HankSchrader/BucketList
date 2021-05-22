//
//  MKPointAnnotation-ObservableObject.swift
//  BucketList
//
//  Created by Erik Mikac on 5/22/21.
//

import SwiftUI
import MapKit

extension MKPointAnnotation: ObservableObject {
    public var wrappedTitle: String {
        get {
            self.title ?? "Unknown Value"
        }
        
        set {
            title = newValue
        
        }
    }
    
    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? "Unknown Value"
        }
        
        set {
            title = newValue
        }
        
    }
}

