
class SoundItem {
  let id: Int
  let name: String
  let soundFileExtension: String
  
  init(id: Int, name: String, soundFileExtension: String = "wav") {
    self.id = id
    self.name = name
    self.soundFileExtension = soundFileExtension
  }
  
}
