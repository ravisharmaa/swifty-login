import UIKit

class ViewController: UIViewController {
    
    //MARK:- SubViews
    lazy var containerView: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red: 0.19, green: 0.17, blue: 0.21, alpha: 1.0)
        //container.backgroundColor = .red
        return container
    }()
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "logo")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var emailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "mail")
        
        return imageView
    }()
    
    lazy var passwordImageView: UIImageView = {
        let pwImageView = UIImageView()
        pwImageView.image = #imageLiteral(resourceName: "lock")
        
        return pwImageView
    }()
    
    lazy var emailTextField: UITextField = {
        let insets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        
        let textField = CustomTextField(insets: insets, placeholder: "Email")
        
        textField.textContentType = .emailAddress
        
        textField.backgroundColor = .clear
        
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let insets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        
        let textField = CustomTextField(insets: insets, placeholder: "Password")
        
        textField.textContentType = .password
        
        textField.backgroundColor = .clear
        
        return textField
    }()
    
    lazy var emailContainerView: UIView = {
        let emailContainer = UIView()
        emailContainer.backgroundColor = UIColor(red: 0.19, green: 0.17, blue: 0.21, alpha: 1.0)
        return emailContainer
    }()
    
    lazy var emailVerificationView: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "crossmark")
        return image
    }()
    
    lazy var passwordContainerView: UIView = {
        let passwordContainer = UIView()
        passwordContainer.backgroundColor = UIColor(red: 0.19, green: 0.17, blue: 0.21, alpha: 1.0)
        
        return passwordContainer
    }()
    
    lazy var lineView: UIView = {
        
        let line = UIView()
        line.backgroundColor = .lightGray
        line.translatesAutoresizingMaskIntoConstraints = false
        
        return line
    }()
    
    lazy var lineViewPassword: UIView = {
           
           let line = UIView()
           line.backgroundColor = .lightGray
           line.translatesAutoresizingMaskIntoConstraints = false
           
           return line
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.19, green: 0.17, blue: 0.21, alpha: 1.0)
        setupConstraintsForLogo()
        addConstraintsForEmailView()
        addConstraintsForPasswordView()
    }
    
    //MARK:- Constraints for image
    
    func setupConstraintsForLogo() {
        
        view.addSubview(containerView)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
        
        containerView.addSubview(logoImage)
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 7),
            logoImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            logoImage.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.8),
            logoImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ])
        
    }
    
    func addConstraintsForEmailView() {
        
        
        view.addSubview(emailContainerView)
        
        emailContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailContainerView.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 10),
            emailContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            emailContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            emailContainerView.heightAnchor.constraint(equalToConstant: 55)
        ])
        
        emailContainerView.addSubview(emailImageView)
        
        emailImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailImageView.centerYAnchor.constraint(equalTo: emailContainerView.centerYAnchor),
            emailImageView.leadingAnchor.constraint(equalTo: emailContainerView.leadingAnchor),
            emailImageView.heightAnchor.constraint(equalTo: emailContainerView.heightAnchor, multiplier: 1/2),
            emailImageView.widthAnchor.constraint(equalTo: emailContainerView.heightAnchor, multiplier: 1/2)
        ])
        
        
        emailContainerView.addSubview(emailVerificationView)
        
        emailVerificationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailVerificationView.centerYAnchor.constraint(equalTo: emailContainerView.centerYAnchor),
            emailVerificationView.trailingAnchor.constraint(equalTo: emailContainerView.trailingAnchor, constant: -5),
            emailVerificationView.heightAnchor.constraint(equalTo: emailContainerView.heightAnchor, multiplier: 1/2),
            emailVerificationView.widthAnchor.constraint(equalTo: emailContainerView.heightAnchor, multiplier: 1/2)
        ])
        
        emailContainerView.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: emailContainerView.topAnchor),
            emailTextField.bottomAnchor.constraint(equalTo: emailContainerView.bottomAnchor),
            emailTextField.leadingAnchor.constraint(equalTo: emailImageView.trailingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: emailVerificationView.leadingAnchor, constant: -10)
            
        ])
        
        emailContainerView.addSubview(lineView)
        
        NSLayoutConstraint.activate([
            lineView.bottomAnchor.constraint(equalTo: emailContainerView.bottomAnchor),
            lineView.trailingAnchor.constraint(equalTo: emailContainerView.trailingAnchor),
            lineView.leadingAnchor.constraint(equalTo: emailContainerView.leadingAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 0.5)
        ])
    }
    
    func addConstraintsForPasswordView(){
        
        view.addSubview(passwordContainerView)
        
        passwordContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordContainerView.topAnchor.constraint(equalTo: emailContainerView.bottomAnchor, constant: 10),
            passwordContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            passwordContainerView.heightAnchor.constraint(equalToConstant: 55)
        ])
        
        passwordContainerView.addSubview(passwordImageView)

        passwordImageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            passwordImageView.centerYAnchor.constraint(equalTo: passwordContainerView.centerYAnchor),
            passwordImageView.leadingAnchor.constraint(equalTo: passwordContainerView.leadingAnchor),
            passwordImageView.heightAnchor.constraint(equalTo: passwordContainerView.heightAnchor, multiplier: 1/2),
            passwordImageView.widthAnchor.constraint(equalTo: passwordContainerView.heightAnchor, multiplier: 1/2)
        ])


        passwordContainerView.addSubview(passwordTextField)

        passwordTextField.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: passwordContainerView.topAnchor),
            passwordTextField.bottomAnchor.constraint(equalTo: passwordContainerView.bottomAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: passwordImageView.trailingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordContainerView.trailingAnchor, constant: -10)

        ])

        passwordContainerView.addSubview(lineViewPassword)

        NSLayoutConstraint.activate([
            lineViewPassword.bottomAnchor.constraint(equalTo: passwordContainerView.bottomAnchor),
            lineViewPassword.trailingAnchor.constraint(equalTo: passwordContainerView.trailingAnchor),
            lineViewPassword.leadingAnchor.constraint(equalTo: passwordContainerView.leadingAnchor),
            lineViewPassword.heightAnchor.constraint(equalToConstant: 0.5)
        ])
    }
    
}




