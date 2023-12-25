# ✍🏻Signature View in SwiftUI🚀 [without any package dependency!!]

Signature views are an effective way to capture user signatures in your SwiftUI app. In this tutorial, we’ll guide you through the process of building a signature view using Swift and SwiftUI.

![ezgif com-optimize](https://github.com/adityagi02/SignatureView/assets/77538183/c2677c93-8985-4b35-8137-6adab7a26c5b)

We’ll break down the code into easily digestible chunks, explaining each step along the way. This will allow users to sign documents or forms within your application, providing a more interactive and engaging user experience.

## We have to add 2 files:

 #### [`ADrawSignatureView`](https://github.com/adityagi02/SignatureView/blob/main/SignatureView/DrawSignatureView.swift) :
> The class in this code defines a custom ADrawSignatureView class in Swift, which inherits from UIView. It enables users to draw signatures, providing touch handling, customization options, and delegate callbacks.

 #### [`SignatureView.swift`](https://github.com/adityagi02/SignatureView/blob/main/SignatureView/SignatureView.swift) : 
> The code in SignatureView.swift defines a SignatureViewContainer using UIViewRepresentable. It wraps an ADrawSignatureView, allowing users to draw signatures. The view handles clearing the signature, updates image and PDF data bindings, and delegates to a coordinator for completion events. The coordinator, conforming to ASignatureDelegate, manages the signature-related actions.

That's all, DONE✅ !!

 Now just call this in your view, 
 
```swift
SignatureViewContainer(clearSignature: $clearSignature, signatureImage: $signatureImage, pdfSignature: $signaturePDF)
```
## Screenshot
<img width="1440" alt="Screenshot 2023-12-24 at 6 40 50 PM" src="https://github.com/adityagi02/SignatureView/assets/77538183/c7d8899f-4627-4073-bf4d-c1c5d2ea7f20">

