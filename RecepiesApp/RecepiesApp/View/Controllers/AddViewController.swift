
import UIKit

class AddViewController: UIViewController {
    
    let addScreen = AddView()
    let defString = String(stringLiteral: "")
    
    var RecepiesItems: [Recepie] = []
    
    private var buttons = ButtonsViewController()
    
    override func loadView() {
        let view = addScreen
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addScreen.addButton.addTarget(self, action: #selector(returnButtonsViewController), for: .touchUpInside)
    }
    
    @objc func returnButtonsViewController(){
        let collectionViewController = CollectionViewController()
        let detailsViewController = DetailsViewController()
        let buttonsViewController = ButtonsViewController()
        
        
        let alertController = UIAlertController(title: "Erro", message: "É obrigatório que todos os campos sejam preenchidos", preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
        }
        alertController.addAction(OKAction)
        
        if addScreen.titleTextField.hasText == true && addScreen.ingredientsTextField.hasText == true && addScreen.prepairTextField.hasText == true {
            
            RecepiesItems.append(getInfoRecepie())
            collectionViewController.recepies = RecepiesItems
            detailsViewController.recepies = RecepiesItems
            buttonsViewController.recepies = RecepiesItems
            
            navigationController?.pushViewController(buttonsViewController, animated: true)
        } else {
            present(alertController, animated: true) {
            }
        }
        
    }
    
    func getInfoRecepie() -> Recepie {
        let recepie = Recepie(name: addScreen.titleTextField.text ?? defString,
                              ingredients: addScreen.ingredientsTextField.text ?? defString,
                              prepair: addScreen.prepairTextField.text ?? defString
        )
        return recepie
    }
    
    
    
}
