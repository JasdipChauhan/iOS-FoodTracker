import UIKit

class RatingControl: UIView {
    
    var rating = 0
    var ratingButtons = [UIButton]()
    
    //MARK: initialization

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.blueColor()
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
        addSubview(button)
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("button pressed")
    }
    
}