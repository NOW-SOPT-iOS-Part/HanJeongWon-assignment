//
//  WelcomeViewController.swift
//  iOS-Tving-Clone
//
//  Created by HanJW on 4/30/24.
//

import UIKit
import SnapKit

final class WelcomeViewController: UIViewController {
    
    private var id: String?
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo-image-main")
        return imageView
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "???님\n반가워요!"
        label.textColor = .white
        label.font = UIFont(name: "Pretendard-ExtraBold", size: 23)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private var goToMainButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 14)
        button.layer.cornerRadius = 3
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        setLayout()
        
        bindID()
    }
    
    private func bindID() {
        guard let idText = id else { return }
        self.welcomeLabel.text = "\(idText)님\n반가워요!"
    }
    
    func setLabelText(id: String?) {
        self.id = id
    }
    
    private func setLayout() {
        [logoImageView, welcomeLabel, goToMainButton].forEach {
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        logoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(58)
            make.leading.trailing.equalToSuperview()
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(67)
            make.centerX.equalToSuperview()
        }
        
        goToMainButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(66)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(52)
        }
    }
    
    @objc
    private func backToLoginButtonDidTap() {}
}
