import UIKit

protocol SoundItemsViewPresenter {
  init(view: SoundItemsView)
  func viewDidLoad()
  func onTapped(_ sender: Any)
}

class SoundItemsPresenter: SoundItemsViewPresenter {
  
  weak var view: SoundItemsView?
  private var sounds: [SoundItem]?
  private var repository: SoundRepository
  private var audioService: AudioService
  
  required init(view: SoundItemsView) {
    self.view = view
    self.repository = SoundLocalRepository()
    self.audioService = AudioServiceImpl()
  }
  
  func viewDidLoad() {
    fetchSoundItems()
  }
  
  func fetchSoundItems() {
    sounds = repository.getSounds()
  }
  
  func onTapped(_ sender: Any) {
    guard let button = sender as? UIButton else { return }
    let soundItem = sounds?.first(where: { soundItem -> Bool in
      soundItem.name == button.currentTitle
    })
    audioService.playSound(soundName: soundItem?.name, fileExtension: soundItem?.soundFileExtension)
  }
}
