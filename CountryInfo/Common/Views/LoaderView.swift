import Foundation
import UIKit
import NVActivityIndicatorView

class LoaderView: UIView {
    
    @IBOutlet private weak var activityView: NVActivityIndicatorView!
    
    public func startAnimating() {
        isUserInteractionEnabled = true
        UIView.animate(withDuration: 0.3, animations: {
            self.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        }) { _ in
            self.activityView.isHidden = false
            self.activityView.startAnimating()
        }
    }
    
    public func stopAnimating(onComplete: @escaping () -> Void) {
        activityView.stopAnimating()
        activityView.isHidden = true
        UIView.animate(withDuration: 0.3, animations: {
            self.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        }) { _ in
            self.isUserInteractionEnabled = false
            onComplete()
        }
    }
}

