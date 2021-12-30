//
//  DemtOrgData.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/27/21.
//

import Foundation
import StepperView
import SwiftUI

struct DemtOrgData {
    let firstStep = [
        TextView(text:"Oveview", font: .system(size: 14, weight: .semibold)),
        ]
    let secondStep = [
        TextView(text:"Governance", font: .system(size: 14, weight: .semibold)),
        ]
    let thirdStep = [
        TextView(text:"Structuring", font: .system(size: 14, weight: .semibold)),
        ]
    

    let firstIndicators = [
        StepperIndicationType.custom(Image(systemName:"eyeglasses").font(.largeTitle).eraseToAnyView()),
        ]
    let secondIndicator = [
        StepperIndicationType.custom(Image(systemName:"hammer.fill").font(.largeTitle).eraseToAnyView()),
        ]
    let thirdIndicator = [
        StepperIndicationType.custom(Image(systemName:"arrow.3.trianglepath").font(.largeTitle).eraseToAnyView()),
    ]

    let firstPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
        ]
    let secondPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
        ]
    let thirdPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
    ]

    let firstPitStop = [
        TextView(text:DemtAboutUsPitstops.p1).eraseToAnyView(),
    ]
    let secondPitStop = [
        TextView(text:DemtAboutUsPitstops.p2).eraseToAnyView(),
        ]
    let thirdPitStop = [
        TextView(text:DemtAboutUsPitstops.p3).eraseToAnyView(),
    ]

    //............

    let fourthStep = [
        TextView(text:"Our Objectives", font: .system(size: 14, weight: .semibold)),
        ]
    let fifthStep = [
        TextView(text:"Vision", font: .system(size: 14, weight: .semibold)),
        ]
    let sixthStep = [
        TextView(text:"Mission", font: .system(size: 14, weight: .semibold)),
    ]

    let fourthIndicator = [
        StepperIndicationType.custom(Image(systemName:"lightbulb.fill").font(.largeTitle).eraseToAnyView()),
    ]
    let fifthIndicator = [
        StepperIndicationType.custom(Image(systemName:"eye.square.fill").font(.largeTitle).eraseToAnyView()),
        ]
    let sixthIndicator = [
        StepperIndicationType.custom(Image(systemName:"figure.walk.diamond.fill").font(.largeTitle).eraseToAnyView()),
    ]

    let fourthPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
        ]
    let fifthPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
        ]
    let sixthPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
    ]

    let fourthPitStop = [
        TextView(text:DemtAboutUsPitstops.p4).eraseToAnyView(),
        ]
    let fifthPitStop = [
        TextView(text:DemtAboutUsPitstops.p5).eraseToAnyView(),
        ]
    let sixthPitStop = [
        TextView(text:DemtAboutUsPitstops.p6).eraseToAnyView(),
    ]

    //..........

    let seventhStep = [
        TextView(text:"Values", font: .system(size: 14, weight: .semibold)),
        ]
    let eighthStep = [
        TextView(text:"Geographical Areas of Operation", font: .system(size: 14, weight: .semibold)),
        ]
    let ninthStep = [
        TextView(text:"Partnerships", font: .system(size: 14, weight: .semibold)),
    ]

    let seventhIndicator = [
        StepperIndicationType.custom(Image(systemName:"gift.circle.fill").font(.largeTitle).eraseToAnyView()),
        ]
    let eighthIndicator = [
        StepperIndicationType.custom(Image(systemName:"globe.europe.africa.fill").font(.largeTitle).eraseToAnyView()),
        ]
    let ninthIndicator = [
        StepperIndicationType.custom(Image(systemName:"figure.stand.line.dotted.figure.stand").font(.largeTitle).eraseToAnyView()),
    ]

    let seventhPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
        ]
    let eighthPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
        ]
    let ninthPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
    ]

    let seventhPitStop = [
        TextView(text:DemtAboutUsPitstops.p7).eraseToAnyView(),
        ]
    let eighthPitStop = [
        TextView(text:DemtAboutUsPitstops.p8).eraseToAnyView(),
        ]
    let ninthPitStop = [
        TextView(text:DemtAboutUsPitstops.p9).eraseToAnyView(),
    ]

    //.........

    let tenthStep = [
        TextView(text:"Affiliations", font: .system(size: 14, weight: .semibold)),
        ]
    let eleventhStep = [
        TextView(text:"Approaches", font: .system(size: 14, weight: .semibold)),
        ]
    let twelfthStep = [
        TextView(text:"Humanitarian Assistance", font: .system(size: 14, weight: .semibold)),
    ]

    let tenthIndicator = [
        StepperIndicationType.custom(Image(systemName:"puzzlepiece.fill").font(.largeTitle).eraseToAnyView()),
        ]
    let eleventhIndicator = [
        StepperIndicationType.custom(Image(systemName:"key.fill").font(.largeTitle).eraseToAnyView()),
        ]
    let twelfthIndicator = [
        StepperIndicationType.custom(Image(systemName:"figure.wave").font(.largeTitle).eraseToAnyView()),
    ]

    let tenthPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
        ]
    let eleventhPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
        ]
    let twelfthPitStopLineOption = [
        StepperLineOptions.custom(1, Color.black),
    ]

    let tenthPitStop = [
        TextView(text:DemtAboutUsPitstops.p10).eraseToAnyView(),
        ]
    let eleventhPitStop = [
        TextView(text:DemtAboutUsPitstops.p11).eraseToAnyView(),
        ]
    let twelfthPitStop = [
        TextView(text:DemtAboutUsPitstops.p12).eraseToAnyView(),
    ]

    //.........

    let thirteenthStep = [
                TextView(text:"Supporting Smallholder Farmers", font: .system(size: 14, weight: .semibold)),
    ]

    let thirteenthIndicator = [
       StepperIndicationType.custom(Image(systemName:"heart.fill").font(.largeTitle).eraseToAnyView())
    ]

    let thirteenthPitStopLineOption = [
       StepperLineOptions.custom(1, Color.black)
    ]

    let thirteenthPitStop = [
       TextView(text:DemtAboutUsPitstops.p13).eraseToAnyView(),
    ]
    


    struct DemtAboutUsPitstops {
        static var p1 = "NEW PROJECT ALERT: We are proud to launch a new project \ncalled 'Promoting meaningful community involvement in the Zimbabwe National TB Program \nthrough Community Disease Committees (CDCs) \nto  enhance access to services and to break down barriers'"
        static var p2 = "DEMT's highest decision-making body is the Board of Trustees which is responsible for setting organisational policies, providing guidance and direction to its secretariat as well as supervision of DEMT's activities. The second level is the secretariat which is hired by the Board to implement the organisation's programmes, projects and other activities. The secretariat is headed by the Head of Programs who is responsible for ensuring staff accountability and compliance to operational procedures & guidelines"
        static var p3 = "DEMT maintains a strong field presence with four (4) full time staff, and at least seven (7) qualified and results oriented volunteers. The organisation's employees are drawn from the local communities and they possess an in-depttn understanding of DEMT's geographical area of operation, local languages, cultural norms, values and beliefs. The staff is responsible for the implementation of development programs in four areas namely Emergency Response, Resilience Building, Community Development and Monitoring and Evaluation"
        static var p4 = "• Responding to natural or man­ made disasters and epidemics. • Capacity building of rural communities to establish income generating projects and run viable socio-economic development activities. • Promoting holistic environmental protection and rehabilitation in communities around Zimbabwe. • Promoting food security in rural communities through agricultural practices that include small irrigation schemes"
        static var p5 = "NEW PROJECT ALERT: We are proud to launch a new project called 'Promoting meaningful community involvement in the Zimbabwe National TB Program through Community Disease Committees (CDCs) to  enhance access to services and to break down barriers'"
        static var p6 = "NEW PROJECT ALERT: We are proud to launch a new project called 'Promoting meaningful community involvement in the Zimbabwe National TB Program through Community Disease Committees (CDCs) to  enhance access to services and to break down barriers' "
        static var p7 = "NEW PROJECT ALERT: We are proud to launch a new project called 'Promoting meaningful community involvement in the Zimbabwe National TB Program through Community Disease Committees (CDCs) to  enhance access to services and to break down barriers' "
        static var p8 = "NEW PROJECT ALERT: We are proud to launch a new project called 'Promoting meaningful community involvement in the Zimbabwe National TB Program through Community Disease Committees (CDCs) to  enhance access to services and to break down barriers' "
        static var p9 = "NEW PROJECT ALERT: We are proud to launch a new project called 'Promoting meaningful community involvement in the Zimbabwe National TB Program through Community Disease Committees (CDCs) to  enhance access to services and to break down barriers' "
        static var p10 = "NEW PROJECT ALERT: We are proud to launch a new project called 'Promoting meaningful community involvement in the Zimbabwe National TB Program through Community Disease Committees (CDCs) to  enhance access to services and to break down barriers' "
        static var p11 = "NEW PROJECT ALERT: We are proud to launch a new project called 'Promoting meaningful community involvement in the Zimbabwe National TB Program through Community Disease Committees (CDCs) to  enhance access to services and to break down barriers' "
        static var p12 = "NEW PROJECT ALERT: We are proud to launch a new project called 'Promoting meaningful community involvement in the Zimbabwe National TB Program through Community Disease Committees (CDCs) to  enhance access to services and to break down barriers' "
        static var p13 = "NEW PROJECT ALERT: We are proud to launch a new project called 'Promoting meaningful community involvement in the Zimbabwe National TB Program through Community Disease Committees (CDCs) to  enhance access to services and to break down barriers' "
    }

}
