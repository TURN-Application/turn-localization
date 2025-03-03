//
//  RSKey.swift
//  Copyright © TURN 2024.
//  All rights reserved.
//
// WARNING: This file is auto-generated and locked for editing. Do not modify manually!
//

public enum RSKey {
    case grid(Grid)
    case home(Home)
    case login(Login)
    case onboarding(Onboarding)
    case profile(Profile)
    case settings(Settings)
    case trial(Trial)
    case welcome(Welcome)

    func wrappedValue() -> LocalizableKey {
        switch self {
        case .grid(let wrappedValue):
            wrappedValue
        case .home(let wrappedValue):
            wrappedValue
        case .login(let wrappedValue):
            wrappedValue
        case .onboarding(let wrappedValue):
            wrappedValue
        case .profile(let wrappedValue):
            wrappedValue
        case .settings(let wrappedValue):
            wrappedValue
        case .trial(let wrappedValue):
            wrappedValue
        case .welcome(let wrappedValue):
            wrappedValue
        }
    }

    // MARK: - Grid.xstrings
    public enum Grid: String, LocalizableKey {
        case drafts
        case hidden
        case menuItemTitleFive
        case menuItemTitleFour
        case menuItemTitleOne
        case menuItemTitleThree
        case menuItemTitleTwo
        case prepared
        case scheduled
        case selectAll
    }

    // MARK: - Home.xstrings
    public enum Home: String, LocalizableKey {
        case calendarHeader
        case createHeader
        case getProItem
        case visualsHeader
    }

    // MARK: - Login.xstrings
    public enum Login: String, LocalizableKey {
        case emailEmpty
        case emailInvalidFormat
        case forgotPasswordTitle
        case loginButtonAppleTitle
        case loginButtonEmailTitle
        case loginButtonFacebookTitle
        case loginButtonGoogleTitle
        case loginExploreButtonTitle
        case loginMainLabel
        case nameEmpty
        case nameInvalidFormat
        case passwordContainsName
        case passwordEmpty
        case passwordRequirementsNotMet
        case resetPasswordCtaButtonTitle
        case resetPasswordFieldPlaceholder
        case resetPasswordFieldTitle
        case resetPasswordNavigationTitle
        case resetPasswordTip
        case selectNameCtaButtonTitle
        case selectNameFieldPlaceholder
        case selectNameFieldTitle
        case selectNameNavigationTitle
        case selectNameTip
        case signInCTATitle
        case signInFieldPlaceholderEmail
        case signInFieldPlaceholderPassword
        case signInFieldTitleEmail
        case signInFieldTitlePassword
        case signInNavigationTitle
        case signInTextViewFirstPart
        case signInTextViewSecondPart
        case signUpCTATitle
        case signUpFieldPlaceholderEmail
        case signUpFieldPlaceholderPassword
        case signUpFieldTitleEmail
        case signUpFieldTitleName
        case signUpFieldTitlePassword
        case signUpNavigationTitle
        case signUpPlaceholderName
        case signUpTextViewFirstPart
        case signUpTextViewSecondPart
    }

    // MARK: - Onboarding.xstrings
    public enum Onboarding: String, LocalizableKey {
        case ctaButtonTitle
        case ctaButtonTitleLast
        case notificationCTATitle
        case notificationMainBody
        case notificationMainTitle
        case notificationSkipButton
        case notificationViewBody
        case notificationViewTitle
        case oneBadgeTitle
        case oneDescTitle
        case oneFullTitle
        case threeBadgeTitle
        case threeDescTitle
        case threeFullTitle
        case twoBadgeTitle
        case twoDescTitle
        case twoFullTitle
    }

    // MARK: - Profile.xstrings
    public enum Profile: String, LocalizableKey {
        case getProAccount
        case newAccount
        case title
    }

    // MARK: - Settings.xstrings
    public enum Settings: String, LocalizableKey {
        case darkMode
        case editProfileDeleteAccount
        case editProfileSave
        case faq
        case instagramBadges
        case logOut
        case managePersonalData
        case navigationTitle
        case navigationTitleEditProfile
        case navigationTitleProfile
        case notification
        case privacyPolicy
        case rateApp
        case termsOfUse
    }

    // MARK: - Trial.xstrings
    public enum Trial: String, LocalizableKey {
        case featureListHeaderTitle
        case featureListItemDescFour
        case featureListItemDescOne
        case featureListItemDescThree
        case featureListItemDescTwo
        case featureListItemTitleFour
        case featureListItemTitleOne
        case featureListItemTitleThree
        case featureListItemTitleTwo
        case month
        case pricingLabelTitlePartOne
        case promotionDesc
        case promotionTitlePartFour
        case promotionTitlePartOne
        case promotionTitlePartThree
        case promotionTitlePartTwo
        case restorePurchaseButtonTitle
        case screenTitle
        case segmentControlTitleOne
        case segmentControlTitleTwo
        case startTrialButtonTitle
        case stepIconViewAccessDesc
        case stepIconViewAccessTitle
        case stepIconViewNotificationDesc
        case stepIconViewNotificationTitle
        case stepIconViewPaymentDescPartOne
        case stepIconViewPaymentDescPartThree
        case stepIconViewPaymentDescPartTwo
        case stepIconViewPaymentTitle
        case testimonial1
        case testimonial1AuthorName
        case testimonial1AuthorTitle
        case testimonial1Description
        case testimonial2
        case testimonial2AuthorName
        case testimonial2AuthorTitle
        case testimonial2Description
        case testimonial3
        case testimonial3AuthorName
        case testimonial3AuthorTitle
        case testimonial3Description
        case testimonial4
        case testimonial4AuthorName
        case testimonial4AuthorTitle
        case testimonial4Description
        case testimonialsHeaderTitle
        case year
    }

    // MARK: - Welcome.xstrings
    public enum Welcome: String, LocalizableKey {
        case body
        case ctaButtonTitle
        case descPartOne
        case descPartTwo
        case privacyPolicy
        case termsOfService
        case title
    }
}
