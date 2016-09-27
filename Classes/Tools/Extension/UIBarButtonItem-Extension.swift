/**
 *
 * ......................我佛慈悲.......................
 *                       _oo0oo_
 *                      o8888888o
 *                      88" . "88
 *                      (| -_- |)
 *                      0\  =  /0
 *                    ___/`---'\___
 *                  .' \\|     |// '.
 *                 / \\|||  :  |||// \
 *                / _||||| -卍-|||||- \
 *               |   | \\\  -  /// |   |
 *               | \_|  ''\---/''  |_/ |
 *               \  .-\__  '-'  ___/-. /
 *             ___'. .'  /--.--\  `. .'___
 *          ."" '<  `.___\_<|>_/___.' >' "".
 *         | | :  `- \`.;`\ _ /`;.`/ - ` : | |
 *         \  \ `_.   \_ __\ /__ _/   .-` /  /
 *     =====`-.____`.___ \_____/___.-`___.-'=====
 *                       `=---='
 *
 *..................佛祖开光 ,永无BUG....................
 *         CSDN博客:http://blog.csdn.net/song5347
 *       github地址:https://github.com/lingsuiderongyan
 *             邮箱:lingsuiderongyan@163.com
 */

import UIKit

extension UIBarButtonItem {
    /*
    class func createItem(imageName : String, highImageName : String, size : CGSize) -> UIBarButtonItem {
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), forState: .Normal)
        btn.setImage(UIImage(named: highImageName), forState: .Highlighted)
        
        btn.frame = CGRect(origin: CGPointZero, size: size)
        
        return UIBarButtonItem(customView: btn)
    }
    */
    
    // 便利构造函数: 1> convenience开头 2> 在构造函数中必须明确调用一个设计的构造函数(self)
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSizeZero)  {
        // 1.创建UIButton
        let btn = UIButton()
        
        // 2.设置btn的图片
        btn.setImage(UIImage(named: imageName), forState: .Normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), forState: .Highlighted)
        }
        
        // 3.设置btn的尺寸
        if size == CGSizeZero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPointZero, size: size)
        }
        
        // 4.创建UIBarButtonItem
        self.init(customView : btn)
    }
    
}
