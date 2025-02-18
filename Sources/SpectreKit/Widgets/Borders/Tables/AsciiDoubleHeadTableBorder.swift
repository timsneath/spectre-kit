/// Represents an old school ASCII border with a double header border.
public class AsciiDoubleHeadTableBorder: TableBorder {

    public override func get(part: TableBorderPart) -> String {
        switch part {
        case .headerTopLeft: "+"
        case .headerTop: "-"
        case .headerTopSeparator: "+"
        case .headerTopRight: "+"
        case .headerLeft: "|"
        case .headerSeparator: "|"
        case .headerRight: "|"
        case .headerBottomLeft: "|"
        case .headerBottom: "="
        case .headerBottomSeparator: "+"
        case .headerBottomRight: "|"
        case .cellLeft: "|"
        case .cellSeparator: "|"
        case .cellRight: "|"
        case .footerTopLeft: "+"
        case .footerTop: "-"
        case .footerTopSeparator: "+"
        case .footerTopRight: "+"
        case .footerBottomLeft: "+"
        case .footerBottom: "-"
        case .footerBottomSeparator: "+"
        case .footerBottomRight: "+"
        case .rowLeft: "|"
        case .rowCenter: "-"
        case .rowSeparator: "+"
        case .rowRight: "|"
        }
    }
}
