//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Manyuchi, Carrington C on 2024/08/14.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .frame(height: 300)
                Spacer().frame(height: 80)
                Label("Scanned bar code ", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not yet Scanned")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
