import UIKit

func loadCustomButtonStyle(button: UIButton) -> UIButton {
    button.layer.backgroundColor = UIColor.blueColor().CGColor
    button.layer.cornerRadius = 4
    button.setTitleColor(UIColor.whiteColor(), forState: UIControlState())
    return button
}