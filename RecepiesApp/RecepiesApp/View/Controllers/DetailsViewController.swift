import UIKit

class DetailsViewController: UIViewController {
   
    let detailsScreen = DetailsView()
    var recepies: [Recepie] = []
    
    override func loadView() {
        let view = detailsScreen
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func getName(data: String) {
        detailsScreen.nameLabel.text = data
    }
    
    func getIngredients(data: String){
        detailsScreen.ingredientsLabel.text = data
    }
    
    func getPrepair(data: String){
        detailsScreen.prepairLabel.text = data
    }
    
}
