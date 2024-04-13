import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assuming you have a button that triggers the navigation
        let navigateButton = UIButton(type: .system)
        navigateButton.setTitle("Navigate", for: .normal)
        navigateButton.addTarget(self, action: #selector(navigateButtonTapped), for: .touchUpInside)
        view.addSubview(navigateButton)
        
        // Set up button constraints
        navigateButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            navigateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            navigateButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func navigateButtonTapped() {
        // Create an instance of AvailabilityViewController
        let availabilityVC = AvailabilityViewController()
        
        // Present it using navigation controller
        navigationController?.pushViewController(availabilityVC, animated: true)
    }
}
