import AVFoundation

class AudioServiceImpl: AudioService {
  var player: AVAudioPlayer?
  
  func playSound(soundName: String?, fileExtension: String?) {
    guard let url = Bundle.main.url(forResource: soundName, withExtension: fileExtension) else { return }
    do {
      //Play the sound even if device in silent mode
      try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
      try AVAudioSession.sharedInstance().setActive(true)
      player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
      guard let player = player else { return }
      player.play()
    } catch let error {
      debugPrint(error.localizedDescription)
    }
  }
  
}
