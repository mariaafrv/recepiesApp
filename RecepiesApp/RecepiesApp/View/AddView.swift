import UIKit

class AddView: BaseView {
    
    lazy var background: UIView = {
        let background = UIView()
        return background
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Insira todas as informações abaixo para cadastrar sua receita"
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    lazy var labelTitle: UILabel = {
        let labelTitle = UILabel()
        labelTitle.text = "Nome da receita"
        return labelTitle
    }()
    
    //NOME
    lazy var titleTextField: UITextField = {
        let titleTextField = UITextField()
        titleTextField.layer.borderWidth = 2
        titleTextField.layer.cornerRadius = 8
        titleTextField.layer.borderColor = UIColor.gray.cgColor
        titleTextField.placeholder = "Campo obrigatório"
        return titleTextField
    }()
   
    //INGREDIENTES
    lazy var labelIngredients: UILabel = {
        let labelIngredients = UILabel()
        labelIngredients.text = "Ingredientes"
        return labelIngredients
    }()
    
    lazy var ingredientsTextField: UITextField = {
        let ingredientsTextField = UITextField()
        ingredientsTextField.layer.borderWidth = 2
        ingredientsTextField.layer.cornerRadius = 8
        ingredientsTextField.layer.borderColor = UIColor.gray.cgColor
        ingredientsTextField.placeholder = "Favor insira um ingrediente abaixo do outro"
        return ingredientsTextField
    }()
    
    //MODO DE PREPARO
    lazy var labelPrepair: UILabel = {
        let labelPrepair = UILabel()
        labelPrepair.text = "Modo de preparo"
        return labelPrepair
    }()
    
    lazy var prepairTextField: UITextField = {
        let prepairTextField = UITextField()
        prepairTextField.layer.borderWidth = 2
        prepairTextField.layer.cornerRadius = 8
        prepairTextField.layer.borderColor = UIColor.gray.cgColor
        prepairTextField.placeholder = "Favor insira um passo abaixo do outro"
        return prepairTextField
    }()
    
    lazy var addButton: UIButton = {
        let addButton = UIButton()
        addButton.layer.masksToBounds = true
        addButton.layer.cornerRadius = 8
        addButton.backgroundColor = .systemBlue
        addButton.setTitle("Finalizar Cadastro", for: .normal)
        return addButton
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
        background.addSubview(labelTitle)
        background.addSubview(titleTextField)
        background.addSubview(labelIngredients)
        background.addSubview(ingredientsTextField)
        background.addSubview(labelPrepair)
        background.addSubview(prepairTextField)
        background.addSubview(addButton)

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
            size: .init(width: 300, height: 60))
        
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        labelTitle.anchor(
            top: label.bottomAnchor,
            leading: titleTextField.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 30) )
        
        titleTextField.anchor(
            top: labelTitle.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 50))
        
        titleTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        labelIngredients.anchor(
            top: titleTextField.bottomAnchor,
            leading: labelTitle.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 30))
        
        ingredientsTextField.anchor(
            top: labelIngredients.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 100))
        
        ingredientsTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        labelPrepair.anchor(
            top: ingredientsTextField.bottomAnchor,
            leading: ingredientsTextField.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 30))
        
        prepairTextField.anchor(
            top: labelPrepair.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 100))
        
        prepairTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addButton.anchor(
            top: prepairTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 60, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 65))
        
        addButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
