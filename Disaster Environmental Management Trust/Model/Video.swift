//
//  Video.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/16/21.
//

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct VideoList {
    
    static let topTen = [
        Video(imageName: "demtCommunityBaking",
              title: "DEMT and Resilience40 with funding from the Foreign Commonwealth and Development.",
              description: "Establishing school orchards to promote the consultation and production of fruits by young children; and planting indigenous trees to protect community dams from siltation.",
              viewCount: 34,
              uploadDate: "Jun 22 2021",
              url: URL(string: "https://www.youtube.com/watch?v=QAauanfCC_Q")!),
        
        Video(imageName: "demtField2",
              title: "Assessing Transparency and Accountability in the use of Devolution Funds: Silveira House Project",
              description: "Comprehensive assessment and fully transparent project tracking to encourage close work relations with the community",
              viewCount: 7,
              uploadDate: "Oct 28 2021",
              url: URL(string: "https://www.youtube.com/watch?v=vZluOCvWgBE")!),
        
        Video(imageName: "demtField",
              title: "Murara Irrigation Scheme - Mutoko rural district of Zimbabwe.",
              description: "Murara Irrigation Scheme, a SUN CSO, is at the brink of closing operations due a critical shortage of water. Their only dam has dried up due to climate variability and change and a solar powered borehole is urgently required to save these rural farmers from losing their livelihoods.",
              viewCount: 41,
              uploadDate: "Jun 29 2021",
              url: URL(string: "https://www.youtube.com/watch?v=vpUlY-IUxTA")!),
              
        Video(imageName: "demtCommunityEducation",
              title: "Mashonaland East Province, Zimbabwe SUN CSOs Documentary part 3.",
              description: "•Coping Centre of People Living With HIV & AIDS (COCEPWA) is a member of the ZCSOSUNA in Harare South working on improving the health of people living with HIV and AIDS and they involve the disabled invtheir initiatives. They believe with a good diet you can have a longer life even when you are HIV positive",
              viewCount: 29,
              uploadDate: "Dec 5 2020",
              url: URL(string: "https://www.youtube.com/watch?v=wHzlTXf5Ato")!),
        
        Video(imageName: "demtYampwe",
              title: "Mashonaland East Province SUN CSOs Documentary part 2.",
              description: "•Dororwera Irrigation Cooperative Society is empowering the community through intensified agriculture, providing food and jobs to the local people.",
              viewCount: 26,
              uploadDate: "Nov 30 2020",
              url: URL(string: "https://www.youtube.com/watch?v=RB4Y8pbSQxs")!),
        
        Video(imageName: "demtDisabled2",
              title: "Mashonaland East Province of Zimbabwe - SUN CSOs documentary part 1",
              description: "SUN CSOs documentary in Mashonaland East Zimbabwe",
              viewCount: 230,
              uploadDate: "Nov 28 2020",
              url: URL(string: "https://www.youtube.com/watch?v=3kMcrctTlP0")!),
        
        Video(imageName: "demtCommunityEducation2",
              title: "SUN CSOs - FULL DOCUMENTARY COMING SOON!",
              description: "Coming Soon!",
              viewCount: 57,
              uploadDate: "Nov 11 2020",
              url: URL(string: "https://www.youtube.com/watch?v=U96Vuf6Sn2Q")!),
        
        Video(imageName: "demtHorticulture",
              title: "SUN CSOs Capacity Building Training (02 November 2020 - 03 November 2020)",
              description: "The SUN CSO Training in Mashonaland East",
              viewCount: 74,
              uploadDate: "Nov 4 2020",
              url: URL(string: "https://www.youtube.com/watch?v=U8NIcBgDwRg")!),
        
        /* Video(imageName: "",
              title: "",
              description: "",
              viewCount: 76224,
              uploadDate: "",
              url: URL(string: "https://youtu.be/MMoJiZZWoCA")!),
        
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 54024,
              uploadDate: "",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!) */
    ]
}

