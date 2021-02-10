class SoundLocalRepository: SoundRepository {
  
  func getSounds() -> [SoundItem] {
    let sounds = [
      SoundItem(id: 0, name: "C"),
      SoundItem(id: 1, name: "D"),
      SoundItem(id: 2, name: "E"),
      SoundItem(id: 3, name: "F"),
      SoundItem(id: 4, name: "G"),
      SoundItem(id: 5, name: "A"),
      SoundItem(id: 6, name: "B"),
    ]
    return sounds
  }
    
}
