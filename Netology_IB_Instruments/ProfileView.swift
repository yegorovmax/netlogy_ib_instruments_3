//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Max Egorov on 2/10/22.
//

import UIKit

class ProfileView: UIView {
    
    @IBOutlet weak var profileImgUIImageView: UIImageView!
    
    @IBOutlet weak var nameUILabel: UILabel!
    
    @IBOutlet weak var dobUILabel: UILabel!
    
    @IBOutlet weak var textUITaxtView: UITextView!
    @IBOutlet weak var cityUILabel: UILabel!
 
/*    let nibName = "ProfileView"
       var contentView: UIView?
    required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            guard let view = loadViewFromNib() else { return }
            self.addSubview(view)
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            contentView = view
        }
        func loadViewFromNib() -> UIView? {
            let bundle = Bundle(for: type(of: self))
            let nib = UINib(nibName: nibName, bundle: bundle)
            return nib.instantiate(withOwner: self, options: nil).first as? UIView
        }
*/
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupView()
    }
    private func setupView() {
        let view = self.loadViewFromXib()
        self.addSubview(view)
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    private func loadViewFromXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self, options: nil)?.first as? UIView else { return UIView() }
        
        return view
    }
    
    
  
}
