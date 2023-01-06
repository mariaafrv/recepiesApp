import UIKit

class DetailsView: BaseView {
        
    lazy var background: UIView = {
        let background = UIView()
        return background
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Confira abaixo suas receitas salvas"
        label.textAlignment = .center
        return label
    }()
    
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.backgroundColor = .systemBlue
        nameLabel.textColor = .white
        nameLabel.textAlignment = .center
        nameLabel.layer.cornerRadius = 8
        nameLabel.layer.masksToBounds = true
        return nameLabel
    }()
    
    lazy var ingLabel: UILabel = {
        let ingLabel = UILabel()
        ingLabel.textAlignment = .center
        ingLabel.text = "Ingredientes: "
        return ingLabel
    }()
    
    lazy var ingredientsLabel: UILabel = {
        let ingredientsLabel = UILabel()
        ingredientsLabel.layer.borderWidth = 2
        ingredientsLabel.layer.borderColor = UIColor.gray.cgColor
        ingredientsLabel.numberOfLines = 0
        return ingredientsLabel
    }()
    
    lazy var prepLabel: UILabel = {
        let prepLabel = UILabel()
        prepLabel.text = "Modo de preparo: "
        return prepLabel
    }()
    
    lazy var prepairLabel: UILabel = {
      let prepairLabel = UILabel()
        prepairLabel.layer.borderWidth = 2
        prepairLabel.layer.borderColor = UIColor.gray.cgColor
        return prepairLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func addSubviews(){
        addSubview(background)
        background.addSubview(label)
        background.addSubview(ingLabel)
        background.addSubview(nameLabel)
        background.addSubview(ingredientsLabel)
        background.addSubview(prepairLabel)
        background.addSubview(prepLabel)
    }
    
    override func addConstraints() {
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: frame.width, height: frame.height))
        
        label.anchor(
            top: background.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 100, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 30))
        
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        nameLabel.anchor(
            top: label.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        ingLabel.anchor(
            top: nameLabel.bottomAnchor,
            leading: ingredientsLabel.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 100, height: 40))
        
        ingredientsLabel.anchor(
            top: ingLabel.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 200))
        
        ingredientsLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        prepLabel.anchor(
            top: ingredientsLabel.bottomAnchor,
            leading: ingredientsLabel.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        prepairLabel.anchor(
            top: prepLabel.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 200))
        
        prepairLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        

    
}
}
