//
//  EmptyView.swift
//  EmptyViewKit
//
//  Created by Mx on 2020/11/21.
//

import UIKit

open class EmptyView: UIView {

    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel.init()
        return titleLabel
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
        addSubview(titleLabel)
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.frame = CGRect.init(x: 0, y: 0, width: 100, height: 44)
        titleLabel.center = self.center
    }
}
