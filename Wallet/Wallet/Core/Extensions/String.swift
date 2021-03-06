import UIKit

extension String {

    var localized: String {
        return localized(in: Bundle.main)
    }

    func localized(_ arguments: CVarArg...) -> String {
        return localized(in: Bundle.main, arguments: arguments)
    }

    func localizedPlural(_ arguments: CVarArg...) -> String {
        return localizedPlural(in: Bundle.main, arguments: arguments)
    }

    public func height(forContainerWidth containerWidth: CGFloat, font: UIFont) -> CGFloat {
        return size(containerWidth: containerWidth, font: font).height
    }

    public func size(containerWidth: CGFloat, font: UIFont) -> CGSize {
        return (self as NSString).boundingRect(
                with: CGSize(width: containerWidth, height: .greatestFiniteMagnitude),
                options: [.usesFontLeading, .usesLineFragmentOrigin],
                attributes: [NSAttributedStringKey.font: font],
                context: nil).size
    }

}
