import Foundation
import UIKit

class CustomTextField: UITextField {
    
    let insets: UIEdgeInsets
    
    let textPlaceholder: String?
    
    init(insets: UIEdgeInsets, placeholder: String) {
        self.insets = insets
        self.textPlaceholder = placeholder
        super.init(frame: .zero)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: self.insets)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: self.insets)
    }
    
    func setupLayout(){
        
        returnKeyType = .next
        autocorrectionType = .no
        autocapitalizationType = .none
        autocorrectionType = .no
        enablesReturnKeyAutomatically = true
        
        tintColor = .white
        textColor = .white
        
        placeholder = textPlaceholder!
        
    }
    
    
}
