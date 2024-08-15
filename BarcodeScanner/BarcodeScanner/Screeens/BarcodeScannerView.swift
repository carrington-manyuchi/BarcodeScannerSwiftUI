//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Manyuchi, Carrington C on 2024/08/14.
//

import SwiftUI

struct BarcodeScannerView: View {
   
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Rectangle()
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(height: 300)
                Spacer().frame(height: 80)
                Label("Scanned bar code ", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statustext)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
