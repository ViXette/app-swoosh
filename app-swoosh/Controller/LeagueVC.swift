import UIKit

class LeagueVC: UIViewController {
	
	var player: Player!

	@IBOutlet weak var next_Button: BorderButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		player = Player()
	}


	@IBAction func onNextTapped(_ sender: Any) {
		performSegue(withIdentifier: "skillVCSeque", sender: self)
	}
	
	
	@IBAction func onMenTapped(_ sender: Any) {
		selectLeague(leagueType: "men")
	}
	
	
	@IBAction func onWomenTapped(_ sender: Any) {
		selectLeague(leagueType: "women")
	}
	
	
	@IBAction func onCoedTapped(_ sender: Any) {
		selectLeague(leagueType: "coed")
	}
	
	
	func selectLeague (leagueType: String) {
		player.desiredLeague = leagueType
		next_Button.isEnabled = true
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let skillVC = segue.destination as? SkillVC {
			skillVC.player = player
		}
	}

}
