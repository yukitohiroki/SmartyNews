import UIKit

class ViewController: UIViewController {
    
    var pageMenu: CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var controllerArray : [UIViewController] = []
        
        let controller1:News1ViewController = News1ViewController()
        controller1.title = "トップ"
        controllerArray.append(controller1)
        let controller2:News2ViewController = News2ViewController()
        controller2.title = "ビジネス"
        controllerArray.append(controller2)
        let controller3:News3ViewController = News3ViewController()
        controller3.title = "スポーツ"
        controllerArray.append(controller3)
        let controller4:News4ViewController = News4ViewController()
        controller4.title = "エンタメ"
        controllerArray.append(controller4)
        let controller5:News5ViewController = News5ViewController()
        controller5.title = "2ちゃん"
        controllerArray.append(controller5)
        
        let paramerters: [CAPSPageMenuOption] = [
            
            .menuItemSeparatorWidth(4.3),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.1)
        ]
        
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: 20.0, width: self.view.frame.width, height: self.view.frame.size.height), pageMenuOptions: paramerters)
        
        //pageMenuのビューを親のビューに追加
        self.view.addSubview(pageMenu!.view)
        //pageMenuのビューをToolbarの後ろへ移動させた
        self.view.sendSubview(toBack: pageMenu!.view)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

