//
//  AppDefaults.swift
//  dreamhousenative
//
//  Created by Quinton Wall on 7/21/16.
//  Copyright © 2016 Quinton Wall. All rights reserved.
//

import Foundation
import UIKit
import SalesforceSDKCore

class AppDefaults {
    
          //color palette
        static let dreamhouseGreen: UIColor = UIColor(netHex: 0x84BF41)
        static let dreamhouseLightBlue: UIColor = UIColor(netHex: 0x00A3DA)
        static let dreamhouseDarkBlue: UIColor = UIColor(netHex: 0x005385)
        static let dreamhouseBlreen: UIColor = UIColor(netHex: 0x00778E)
    
    static func isLoggedIn() -> Bool {
        return SFAuthenticationManager.sharedManager().haveValidSession
    }
    
    static func getUserId() -> String {
        return SFUserAccountManager.sharedInstance().currentUser.accountIdentity.userId
    }
    
    
    //docs are old. You need to screenscrape the deployment ID from the javascript snippet
    static func getSOSOptions() -> SOSOptions {
        let options = SOSOptions(liveAgentPod: "d.la4-c1-was.salesforceliveagent.com",
                                 orgId: "00D36000000kFKB",
                                 deploymentId: "572360000004ZFU")
        
        return options
    }
}