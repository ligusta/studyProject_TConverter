
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 50
            slider.minimumValue = -50
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanges(_ sender: UISlider) {
        let temperatureCelcius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelcius)ºC"
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
    
}

