import UIKit

class WelcomeVC: UIViewController {

	@IBOutlet weak var swoosh_img: UIImageView!
	@IBOutlet weak var bg_img: UIImageView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


	@IBAction func unwindFromSkillVC (unwindSeque: UIStoryboardSegue) {
		print(unwindSeque)
	}


}

