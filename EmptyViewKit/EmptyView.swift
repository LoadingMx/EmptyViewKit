//
//  EmptyView.swift
//  EmptyViewKit
//
//  Created by Mx on 2020/11/21.
//

import UIKit
import SnapKit

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
    
    private func setupViews() {
        
        addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { (make) in
            make.edges.equalTo(UIEdgeInsets.zero)
        }
    }
    
    func testRed() {
        titleLabel.text = "Red"
    }
}
