//
//  Protocols.swift
//  IPI
//
//  Created by Felipe Zamudio on 27/04/19.
//  Copyright © 2019 NRC. All rights reserved.
//

import Foundation

// Protocol for update view in the onBoarding
protocol OnBoardingPageViewControllerDelegate: class {
    func didUpdatePageIndex (currentIndex index: Int)
}

// Protocol for manage register events
protocol SignupViewControllerDelegate: class {
    func facebookSignup()
    func googleSignup()
    func signupRequest(email:String, password:String, confrimPass: String)
}

// Protocol for manage Sing In events
protocol SigninViewControllerDelegate: class {
    func sendMessage(withMessage msn: String)
    func signinRequest(userToAuth: RegisterUserProfileModel)
}

// Protocol for manage recovery pass events
protocol RecoveryViewControllerDelegate: class {
    func sendMessage(withMessage msn: String)
    func sendRecoveryPost(email: RegisterUserProfileModel)
    func dismiss()
}

// Protocol for Welcome
protocol WelcomeViewControllerDelegate: class {
    func updateOnboardingState(withState state:Bool)
}
