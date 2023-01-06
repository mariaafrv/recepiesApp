
import UIKit

class ButtonsViewController: UIViewController {
    
    let buttonScreen = ButtonsView()
    var recepies: [Recepie] = []
    
    override func loadView() {
        let view = buttonScreen
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonScreen.addButton.addTarget(self, action: #selector(addViewController), for: .touchUpInside)
        buttonScreen.viewButton.addTarget(self, action: #selector(recepiesCollectionViewCell), for: .touchUpInside)
    }
    
    @objc func addViewController(){
        let addViewController = AddViewController()
        navigationController?.pushViewController(addViewController, animated: true)
    }
    
    @objc func recepiesCollectionViewCell(){
        let collectionViewController = CollectionViewController()
        collectionViewController.recepies = recepies
        navigationController?.pushViewController(collectionViewController, animated: true)
    }
}
