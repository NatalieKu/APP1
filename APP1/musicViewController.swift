//
//  musicViewController.swift
//  APP1
//
//  Created by MEI KU on 2017/7/22.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit
import SafariServices

class musicViewController: UIViewController {
    
    
    @IBAction func pressed(_ sender: Any) {
        
        let url = URL(string: "https://www.youtube.com/watch?v=fHiCn1KVv0A&list=PLa_L7UEcQ6bWdund9SWDFenmTXkquEb9A")
        let controller = SFSafariViewController(url: url!)
        present(controller, animated: true, completion: nil)
        }
    
    
    @IBAction func pressedBtn2017(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=FY9v147BZuE&list=PLlqZM4covn1H69IAGko-oNj0lubezFQms")
        let controller = SFSafariViewController(url: url!)
        present(controller, animated: true, completion: nil)
        
        
    }
    
    
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var itrLabel: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let yearLabelFrame = yearLabel.frame
        let itrLabelFrame = itrLabel.frame
        
        yearLabel.frame = yearLabelFrame.offsetBy(dx: 500, dy: 0)
        itrLabel.frame = itrLabelFrame.offsetBy(dx: 500, dy: 0)
        UIView.animate(withDuration: 4, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            self.yearLabel.alpha = 1
            self.itrLabel.alpha = 1
            
            self.yearLabel.frame = yearLabelFrame
            self.itrLabel.frame = itrLabelFrame
            
        }, completion: nil)
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
