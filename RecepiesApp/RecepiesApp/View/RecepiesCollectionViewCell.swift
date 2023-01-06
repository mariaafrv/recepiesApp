import UIKit

class RecepiesCollectionViewCell: CollectionViewBase {
    
    
    var recepiesView: Recepie? {
        didSet {
            nameLabel.text = recepiesView?.name
        }
    }
    lazy var container: UIView = {
        let container = UIView()
        container.layer.borderColor = UIColor.gray.cgColor
        container.layer.borderWidth = 2
        container.layer.cornerRadius = 6
        container.layer.masksToBounds = true
        return container
    }()
    
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.textColor = .black
        nameLabel.text = ""
        return nameLabel
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named:"fork")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 7
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func addSubviews(){
        addSubview(container)
        container.addSubview(imageView)
        container.addSubview(nameLabel)
    }
    
    override func addConstraints() {
        
        container.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 0, left: 10, bottom: 10, right: 10),
            size: .init(width: frame.width, height: 80 ))
        
        imageView.anchor(
            top: container.topAnchor,
            leading: container.leadingAnchor,
            bottom: container.bottomAnchor,
            trailing: nil,
            padding: .init(top: 10, left: 10, bottom: 10, right: 0),
            size: .init(width: 60, height: 60))
        
        nameLabel.anchor(
            top: imageView.topAnchor,
            leading: imageView.trailingAnchor,
            bottom: container.topAnchor,
            trailing: nil,
            padding: .init(top: 5, left: 8, bottom: 10, right: 0),
            size: .init(width: 200, height: 30))
    
    }
}
