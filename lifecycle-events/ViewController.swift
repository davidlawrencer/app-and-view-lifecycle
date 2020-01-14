//
//  ViewController.swift
//  lifecycle-events
//
//  Created by David Rifkin on 1/14/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //triggered after loadView()  is completed.
        //self.view exists, and we can do some stuff to that object
        //ex: we can load stuff off the internet
        //ex: we can set up how this object (a subclass of UIViewController) might interact with other objects - become a delegate/datasource, add listeners
        //ex: create object for SceneKit
        //var people:[People] = People.getPeople()
        //self.view.addSubview(myNewSubview)
        // Do any additional setup after loading the view.
        //analogy: arrived at a restaurant
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //we'll set the initial state of the UI, provided those things aren't "expensive" or don't take up a lot of processing power
        //how are we going to present to the user the initial visual state and interaction capabilities
        //ex: set the initial value of a label
        //ex: designate which UI object will be the first responder
        //ex: update a table view
        //ex: enable/disable UIControls or gestures, hide/show UI objects
        //ex: set background color
        //analogy: being seated - set up a menu at your seat, they might pull back chair or set up utensils
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //analogy: start to take order
        // actually doing things related to the user's interaction or continued attention span to the app
        //ex: trigger a loading indicator
        //ex: start an animation
        //ex: expensive operations (try to present SceneKit object in the view)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //analogy: you've eaten and had the full dining experience, and someone comes over and says "here's the check, thanks so much"
        //ex: update API with "final" level or score in a game
        //ex: set user default - switch saying a or b, you don't need to update the user default every time if the view is going to eventually disappear.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        //analogy: cleaning table after patron leaves
        //teardown
    }

}

