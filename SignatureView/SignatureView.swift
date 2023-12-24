//
//  SignatureView.swift
//  SignatureView
//
//  Created by Aditya Tyagi on 24/12/23.
//

import SwiftUI

struct SignatureViewContainer: UIViewRepresentable {
    @Binding var clearSignature: Bool
    @Binding var signatureImage: UIImage?
    @Binding var pdfSignature: Data?
    
    @State private var updateDataToggle: Bool = false
    
    func makeUIView(context: Context) -> ADrawSignatureView {
        let ASignatureView = ADrawSignatureView(backgroundColor: UIColor(Color.white))
        ASignatureView.delegate = context.coordinator
        ASignatureView.strokeColor = UIColor(.green)
        return ASignatureView
    }
    
    func updateUIView(_ uiView: ADrawSignatureView, context: Context) {
        if clearSignature {
            uiView.clear()
            DispatchQueue.main.async {
                clearSignature.toggle()
                signatureImage = nil
                pdfSignature = nil
            }
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(signatureContainer: self)
    }
    
    func updateSignature() {
        updateDataToggle.toggle()
    }
}

extension SignatureViewContainer {
    class Coordinator: ASignatureDelegate {
        var signatureContainer: SignatureViewContainer
        
        init(signatureContainer: SignatureViewContainer) {
            self.signatureContainer = signatureContainer
        }
        
        func didStart() {}
        
        func didFinish(_ view: ADrawSignatureView) {
            signatureContainer.signatureImage = view.getSignature()
            signatureContainer.pdfSignature = view.getPDFSignature()
        }
    }
}

extension UIView {
    
    convenience init(backgroundColor: UIColor) {
        self.init()
        self.backgroundColor = backgroundColor
    }
}
