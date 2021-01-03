
import SwiftUI

public protocol AccessibleView: View {
    var size: ContentSizeCategory { get }
}

public extension AccessibleView {
    func truncateUnlessAccessible(text: Text, withLineLimit limit: Int = 3) -> some View {
        if size.isAccessibilityCategory {
            text.lineLimit(limit)
        } else {
            text.lineLimit(0).truncationMode(.middle)
        }
        return self
    }
    
    func centerTextIfAccessible() -> some View {
        if size.isAccessibilityCategory {
            multilineTextAlignment(.center)
        }
        return self
    }
}
