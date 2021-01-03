
import SwiftUI

public struct RStack<Content: View> : AccessibleView {
    @Environment(\.sizeCategory) public var size: ContentSizeCategory

    let content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        VStack {
            if size.isAccessibilityCategory {
                content()
            } else {
                HStack { content() }
            }
        }
        
    }
    
}
