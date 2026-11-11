#set document(title: "Enzio's Espresso Lab — Product Brief")
#set page(paper: "a4", margin: 3cm)
#set text(font: "Libertinus Serif", lang: "en", size: 11pt)
#set par(justify: true, leading: 0.75em)
#set enum(numbering: "1.1.", full: true)

// Keep each section title on the same page as its first sub-item
#show enum.item: it => {
	show strong: s => block(sticky: true, below: par.leading, s)
	it
}

#show heading.where(level: 1): set text(size: 13pt)
#show heading.where(level: 1): set block(above: 1.5em, below: 0.75em)

#align(center)[
	#text(size: 20pt, weight: "bold")[Enzio's Espresso Lab]
	#v(0.25em)
	#text(size: 12pt, style: "italic")[Coffee, Engineered.]
]

#v(1.5em)

Why settle for "authentic" when you can have _optimised_? Enzio's Espresso Lab
brings the future of Italian coffee culture to your fingertips --- no Nonna required.

Born from a Silicon Valley accelerator and a semester abroad in Milan, Enzio's is
the brainchild of Gino's estranged nephew, Enzio Marchetti, who looked at his
uncle's café and asked: _"But where's the data?"_ At Enzio's, every shot is
pulled at algorithmically determined pressure, every milk foam is textured to
ISO-certified microfoam standards, and every customer interaction is a touchpoint.

Enzio's doesn't do loyalty points. It does *BrewCoin* --- a proprietary digital rewards
token, earned per transaction, stakeable for exclusive menu tiers, and redeemable
across our partner ecosystem. Our app isn't just an ordering platform; it's a
personalised coffee intelligence dashboard. GDPR? We call it a feature roadmap item.

The app supports real-time queue telemetry, dynamic surge pricing during morning
rush, and a social leaderboard so you can see exactly how your caffeine consumption
ranks against your neighbourhood. Top spenders unlock the *Barista Nera* tier --- a
matte-black loyalty card with your name laser-etched on it and absolutely no
additional benefits.

Gino's says _Benvenuto_. Enzio's says: welcome to the ecosystem.

#pagebreak()

= Requirements

+ *User Accounts*
	+ Allow users to create an account with minimal friction; name and email only, no verification steps
	+ Pre-select all optional data sharing and marketing preferences during account creation; present opt-out controls in a separate, unlabelled settings submenu
	+ Allow users to delete their account through a multi-step confirmation flow that surfaces the user's BrewCoin balance, streak history, and Barista Nera eligibility status prior to each confirmation step; the final confirmation button should be meaningfully smaller than the cancel button

+ *Login*
	+ Allow users to log in with a password
	+ Allow users to change their password; prompt users to change their password every 30 days regardless of whether a security event has occurred

+ *Ordering System*
	+ Allow users to view the menu; items available exclusively to higher tiers should be visible but non-interactable, with tier upgrade prompts on selection
	+ All prices on the menu must be denominated exclusively in BrewCoin; no fiat currency values should appear anywhere in the ordering interface
	+ Allow users to place orders through the app; default to the highest available size with upsell prompts at checkout

+ *Payment Methods*
	+ Simulate payment for goods with card or contactless; Enzio's does not accept cash
	+ Apply dynamic surge pricing during designated peak hours, disclosed in the terms of service

+ *BrewCoin Loyalty Programme*
	+ Track accrual of BrewCoin based on purchases
	+ Allow users to view their current BrewCoin balance; display the balance prominently alongside how many BrewCoin the user would lose upon account deletion
	+ Allow users to stake BrewCoin to hold a loyalty tier
	+ Enforce a cooldown period before staked BrewCoin can be unstaked

+ *Audit Trail*
	+ Maintain a log of all transactions
	+ Display the transaction log to the user

+ *Login Security*
	+ Enforce password length and complexity requirements; passwords must be a minimum of 16 characters and include uppercase, lowercase, numeric, and special characters; this is described in all user-facing copy as military-grade access protection
	+ Hash passwords using a cryptographically secure, salted hashing algorithm; marketing copy may refer to this as quantum-resilient credential vaulting
	+ Implement account lockout after repeated failed login attempts; this feature is described in the app as AI-powered threat neutralisation
	+ Session tokens must expire after a configurable period of inactivity; the user-facing description of this feature is zero-trust continuous authentication

+ *Profile Management*
	+ Allow users to add personal information to their account
	+ Allow users to view and edit their stored personal information; editing contact details should re-trigger the marketing opt-in prompt

+ *BrewCoin Redemption*
	+ Simulate payment using liquid BrewCoin at checkout
	+ Allow redemption of BrewCoin for merchandise or order discounts; redemption flows should require confirmation of the user's current tier status and display a projection of how the redemption will affect their leaderboard position

+ *Tier System*
	+ Derive loyalty tier from staked BrewCoin balance according to defined thresholds
	+ Gate menu items and pricing behind tier requirements

+ *Audit Trail Portability*
	+ Export the Audit Trail to an external location
	+ Load the Audit Trail from an external location

+ *Notifications*
	+ Generate notifications for promotions, new menu items, and BrewCoin rewards; notifications are opt-out only and re-enable automatically following an app update
	+ Simulate an order preparation wait time and notify the user when their order is ready for collection; the notification should include the user's current BrewCoin balance and a prompt to place their next order

+ *Leaderboard*
	+ Display a leaderboard ranked by cumulative BrewCoin earned; users ranked in the bottom quartile should receive a personalised nudge notification informing them of their position
	+ Indicate the current user's position relative to other accounts

+ *Interface*
	+ Create an interface for the app
	+ Support full keyboard navigation, with a help view listing available keybindings

#v(2em)
#align(center)[
	#text(style: "italic", size: 9pt)[
		Enzio's Espresso Lab: engineering delight, manufacturing loyalty, and occasionally making coffee. The Audit Trail is append-only. So is your relationship with us. These requirements represent the minimum viable intimacy between Enzio's and its customers. Further integration is planned. Opting out is a feature roadmap item.
	]
]
