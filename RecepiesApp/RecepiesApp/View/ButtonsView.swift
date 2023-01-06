import UIKit

class ButtonsView: BaseView {
    
    lazy var background: UIView = {
        let background = UIView()
        return background
    }()
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "receita")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var addButton: UIButton = {
        let addButton = UIButton()

        addButton.layer.cornerRadius = 8
        addButton.layer.masksToBounds = true
        addButton.setTitle("Adicionar", for: .normal)
        addButton.backgroundColor = .systemBlue
        return addButton
    }()
    
    lazy var viewButton: UIButton = {
        let viewButton = UIButton()

        viewButton.layer.cornerRadius = 8
        viewButton.layer.masksToBounds = true
        viewButton.setTitle("Visualizar receitas", for: .normal)
        viewButton.backgroundColor = .systemBlue
        return viewButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func addSubviews(){
        addSubview(background)
        background.addSubview(image)
        background.addSubview(addButton)
        background.addSubview(viewButton)
    }
    
    override func addConstraints(){
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: frame.width, height: frame.height))
        
        image.anchor(
            top: background.topAnchor,
            leading: nil,
            bottom: addButton.topAnchor,
            trailing: nil,
            padding: .init(top: 200, left: 0, bottom: 50, right: 0),
            size: .init(width: 60, height: 100))
        
        image.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addButton.anchor(
            top: image.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 60))
        
        addButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        viewButton.anchor(
            top: addButton.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 60))
        
        viewButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
