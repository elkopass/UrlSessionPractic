//
//  ViewController.swift
//  NetworkPractise
//
//  Created by Веретнов Тимофей on 25.05.2023.
//

import UIKit

class ViewController: UIViewController {

	@IBAction func bTT(_ sender: Any) {
		let API = "https://loremflickr.com/640/360"
		
		guard let apiURL = URL(string: API) else {
			fatalError("Ku")
		}
		
		let session = URLSession(configuration: .default)
		
		let task = session.dataTask(with: apiURL) { (data, response, error) in
			guard let data = data, error == nil else { return }
			DispatchQueue.main.async {
				self.imageView.image = UIImage(data: data)
			}
		}
		task.resume()
	}

	@IBOutlet weak var imageView: UIImageView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


}

