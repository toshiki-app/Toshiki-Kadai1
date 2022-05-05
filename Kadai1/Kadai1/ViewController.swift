import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField1.keyboardType = .numberPad
        self.textField2.keyboardType = .numberPad
        self.textField3.keyboardType = .numberPad
        self.textField4.keyboardType = .numberPad
        self.textField5.keyboardType = .numberPad
        
    }

    @IBAction func add(_ sender: Any) {
        
        self.view.endEditing(true)
        
        var total: Int = 0
        
        if let number1 = Int.init(self.textField1.text!) {
            total += number1
        }
        if let number2 = Int.init(self.textField2.text!) {
            total += number2
        }
        if let number3 = Int.init(self.textField3.text!) {
            total += number3
        }
        if let number4 = Int.init(self.textField4.text!) {
            total += number4
        }
        if let number5 = Int.init(self.textField5.text!) {
            total += number5
        }
        
        self.label.text = total.description
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true)
        
    }
    
}
