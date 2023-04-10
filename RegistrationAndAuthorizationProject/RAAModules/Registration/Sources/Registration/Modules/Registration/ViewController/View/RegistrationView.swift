import UIKit
import SnapKit
import UIComponents

final class RegistrationView: UIView {
    
    let bacgroundImageView: UIImageView = {
        let imageView = UIImageView(image: Resources.Images.bacground)
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = true
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let emailTextField: RATextField = {
        let textField = RATextField()
        textField.configureTextField("Email")
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = RATextField()
        textField.configureTextField("Password")
        return textField
    }()
    
    let verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        return stackView
    }()
    
    override init(frame: CGRect = UIScreen.main.bounds) {
        super.init(frame: frame)
        configureView()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}

private extension RegistrationView {
    func configureView() {
        addSubview(bacgroundImageView)
        bacgroundImageView.addSubview(verticalStackView)
        verticalStackView.addArrangedSubviews([emailTextField, passwordTextField])
    }
    
    func configureConstraints() {
        bacgroundImageView.snp.makeConstraints { make in
            make.directionalEdges.equalToSuperview()
        }
        
        verticalStackView.snp.makeConstraints { make in
            make.height.equalTo(90)
            make.center.equalToSuperview()
            make.directionalHorizontalEdges.equalToSuperview().inset(15)

        }
    }
}
