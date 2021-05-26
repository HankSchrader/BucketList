//
//  AddContentView.swift
//  BucketList
//
//  Created by Erik Mikac on 5/23/21.
//

import SwiftUI
import MapKit
struct AddContentView: View {
    /*
     @State private var centerCoordinate = CLLocationCoordinate2D()
     @State private var locations = [CodableMKPointAnnotation]()
     @State private var selectedPlace: MKPointAnnotation?
     @State private var showingPlaceDetails = false
     @State private var showingEditScreen = false

     */
    @Binding var centerCoordinate: CLLocationCoordinate2D
    @Binding var locations = [CodableMKPointAnnotation]()
    @Binding var selectedPlace: MKPointAnnotation?
    @Binding var showingEditScreen: Bool
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    let newLocation = CodableMKPointAnnotation()
                    newLocation.coordinate = self.centerCoordinate
                    self.locations.append(newLocation)
                    self.selectedPlace = newLocation
                    self.showingEditScreen = true
                }) {
                    Image(systemName: "plus")
                }
                .padding()
                .background(Color.black.opacity(0.75))
                .foregroundColor(.white)
                .font(.title)
                .clipShape(Circle())
                .padding(.trailing)
            }
        }
    }
}

struct AddContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddContentView()
    }
}
