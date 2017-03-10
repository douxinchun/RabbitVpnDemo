//
//  ViewController.swift
//  rabbit
//
//  Created by yicheng on 16/11/18.
//  Copyright © 2016年 yicheng. All rights reserved.
//

import UIKit
import NetworkExtension


class HomeViewController: UIViewController {
    
    @IBOutlet var connectButton: UIButton!
    
    
    var status: VPNStatus {
        didSet(o) {
            updateConnectButton()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.status = .off
        super.init(coder: aDecoder)
        NotificationCenter.default.addObserver(self, selector: #selector(onVPNStatusChanged), name: NSNotification.Name(rawValue: kProxyServiceVPNStatusNotification), object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.status = VpnManager.shared.vpnStatus
    }
    
    func onVPNStatusChanged(){
        self.status = VpnManager.shared.vpnStatus
    }
    
    func updateConnectButton(){
        switch status {
        case .connecting:
            connectButton.setTitle("connecting", for: UIControlState())
        case .disconnecting:
            connectButton.setTitle("disconnect", for: UIControlState())
        case .on:
            connectButton.setTitle("Disconnect", for: UIControlState())
        case .off:
            connectButton.setTitle("Connect", for: UIControlState())

        }
        connectButton.isEnabled = [VPNStatus.on,VPNStatus.off].contains(VpnManager.shared.vpnStatus)

        
    }
    
    @IBAction func connectTap(_ sender: AnyObject) {
        print("connect tap")
        if(VpnManager.shared.vpnStatus == .off){
            VpnManager.shared.connect()
        }else{
            VpnManager.shared.disconnect()
        }
    }
    
    
}

