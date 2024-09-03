//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Vika on 06.05.24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        return calculateStatusText()
    }
    
    private func calculateStatusText() -> String {
        return scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
