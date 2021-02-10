import UIKit

protocol SoundItemsView: class {
  
}

class XylophoneViewController: UIViewController {
  
  var presenter: SoundItemsViewPresenter!
  
  //MARK: IBActions
  @IBAction func keyPressed(_ sender: UIButton) {
    presenter.onTapped(sender)
  }
  
  //MARK: Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter = SoundItemsPresenter(view: self)
    presenter.viewDidLoad()
  }
  
}

extension XylophoneViewController: SoundItemsView {
  
}

