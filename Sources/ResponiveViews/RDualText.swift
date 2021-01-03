
import SwiftUI

public struct RDualText: AccessibleView {
    @Environment(\.sizeCategory) public var size: ContentSizeCategory

    public var firstText: Text
    public var secondText: Text
    var spacer = Spacer()
    
    public init(firstText: Text, secondText: Text) {
        self.firstText = firstText
        self.secondText = secondText
    }
    
    public var body: some View {
        RStack {
            self.firstText
            if !size.isAccessibilityCategory {
                spacer
            }
            self.secondText
        }
    }

}

