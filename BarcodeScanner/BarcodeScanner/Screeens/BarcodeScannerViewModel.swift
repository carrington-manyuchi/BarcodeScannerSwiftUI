//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    
    var statustext: String {
       return scannedCode.isEmpty ? "Not yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        return scannedCode.isEmpty ? .red : .green
    }
}
