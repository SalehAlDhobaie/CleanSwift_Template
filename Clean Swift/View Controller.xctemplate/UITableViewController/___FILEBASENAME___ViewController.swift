//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//  Refactoring by @Alhazmy13
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___ViewControllerInput {
  func displaySomething(viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel)
}


class ___FILEBASENAMEASIDENTIFIER___ViewController: UITableViewController, ___FILEBASENAMEASIDENTIFIER___ViewControllerInput {
  var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter!
  var router: ___FILEBASENAMEASIDENTIFIER___Router!
  
  // MARK: Object lifecycle
  
  override func awakeFromNib() {
    super.awakeFromNib()
    configure()
  }
  
  // MARK: Configuration
  
  func configure() {
    let router = ___FILEBASENAMEASIDENTIFIER___Router()
    router.viewController = self
    
    let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
    presenter.output = self

    
    self.presenter = presenter
    self.router = router
  }
  // MARK: View lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  

  // MARK: Display logic
  
  func displaySomething(viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel) {
    // NOTE: Display the result from the Presenter
    
    // nameTextField.text = viewModel.name
  }
}


