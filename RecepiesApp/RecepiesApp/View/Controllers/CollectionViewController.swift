import UIKit

class CollectionViewController: UIViewController {
    
    private let cellId = "cellId"
    var recepies: [Recepie] = []
    private var buttons = ButtonsViewController()
    
    private let collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame:.zero,
            collectionViewLayout: UICollectionViewFlowLayout()
        )
        return collectionView
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(RecepiesCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        view.addSubview(collectionView)
        self.collectionView.delegate = self
    }
}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recepies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! RecepiesCollectionViewCell
        cell.recepiesView = recepies[indexPath.item]
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20 , height: 80)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailsViewController = DetailsViewController()
        let detailsRecepie = recepies[indexPath.item]

        detailsViewController.getName(data: detailsRecepie.name)
        detailsViewController.getIngredients(data: detailsRecepie.ingredients)
        detailsViewController.getPrepair(data: detailsRecepie.prepair)
        
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
    
    
}







