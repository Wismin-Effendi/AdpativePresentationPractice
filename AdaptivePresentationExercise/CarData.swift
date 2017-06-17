//
//  CarData.swift
//  AdaptivePresentationExercise
//
//  Created by Wismin Effendi on 6/16/17.
//  Copyright © 2017 iShinobi. All rights reserved.
//

import Foundation

struct CarReview {
    
    static let audiA4Review = "The redesigned 2017 Audi A4 is one of the most appealing luxury small cars on the market, which is why it ranks among the best vehicles in the class. You'll find few faults with the A4, save for its sometimes hesitant seven-speed automatic transmission. That might be a deal breaker for performance enthusiasts but should go nearly unnoticed by the typical driver. The A4's base four-cylinder engine produces satisfying acceleration, and a modified (and less powerful) version of the base engine is available in the new A4 Ultra model, which earns some of the highest fuel economy estimates in the class. When it comes to handling, the A4 isn't quite as sporty as some rivals. However, if you want the perfect balance of agility and ride comfort, the 2017 A4 is a great option. It won't have any trouble remaining composed on winding roads, and the standard Audi Drive Select system allows you to tailor your ride to match your environment and driving preference. The A4 is not only fun and easy to drive, but it’s also easy on your wallet. It’s the 2017 winner of the Best Luxury Small Car for the Money award because it has the best combination of quality and value in the class."
    
    static let audiA6Review = "The 2017 Audi A6 is a very good car. It delivers extraordinary overall performance, with a lineup of engines that make brute power, but it still drives like a smaller car, able to easily take on curvy roads. Its cabin is equally praiseworthy. It utilizes high-quality materials in a classic design, and passenger room is spacious all-around. The standard MMI infotainment system is one of the best on the market. Trunk capacity is average, and its base engine gets good fuel economy. One of the few criticisms is that the ride can be stiff at times, especially when driving over rougher pavement."
    
    static let audiRS3Review = "The combination of a small car with a big engine remains a compelling one, and the RS’s 400-hp output is pretty much exactly the right amount of too much. Audi Sport’s head of development, Stephan Reil, confirms that it indeed would have been possible to produce a four-cylinder engine with a similar peak output. (Volkswagen recently axed a mostly developed 400-hp version of its EA888 2.0-liter inline-four that powers the Audi S3 sedan, among myriad other applications.) But Reil says the 2.5-liter straight-five, which is basically a 125 percent version of the four, offers much better drivability: “People buy on horsepower but drive on torque.” The RS3’s maximum torque output of 354 lb-ft is available from 1700 to 5850 rpm and is a substantial increase over the 280 lb-ft of the S3."
    
    static let audiTT_RS_Review = "The five-cylinder delivers 354 lb-ft of torque on a plateau that stretches from 1700 to 5850 rpm. With its 1-2-4-5-3 firing order, it delivers a distinctive five-cylinder sound that is unmistakably Audi and harks back to Audi's heritage of five-cylinder engines, highlighted by the accomplished rally cars of the 1980s. Performance promises to be impressive, with Audi claiming a zero-to-62-mph sprint of 3.7 seconds for the coupe—add 0.2 second for the roadster version, which won’t be coming to the U.S. market."
}

struct CarData {
    
    static let audi: [Car] = [
        Car(title: "Audi A4", imageName: "Audi-A4", otherInfo: CarReview.audiA4Review),
        Car(title: "Audi A6", imageName: "Audi-A6", otherInfo: CarReview.audiA6Review),
        Car(title: "Audi RS-3", imageName: "Audi-RS-3", otherInfo: CarReview.audiRS3Review),
        Car(title: "Audi TT-RS Coupe", imageName: "Audi-TT-RS-Coupe", otherInfo: CarReview.audiTT_RS_Review),
        Car(title: "Unknown White Audi", imageName: "Audi-Unknown", otherInfo: nil),
        ]
}
