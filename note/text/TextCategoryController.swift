//
//  TextCategoryController.swift
//  note
//
//  Created by 连波 on 2018/3/20.
//  Copyright © 2018年 连波. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import HandyJSON
class TextCategoryController: UITableViewController {

    //get请求
    func getLogin(){
        let url = URL(string:"https://www.zaixianbiji.com/api/v1/textget?token=eeeee")!;
        Alamofire.request(url).validate().responseJSON{ response in
            switch response.result.isSuccess{
            case true :
                if let value=response.result.value{
                    let json = JSON(value);
                    let text=Text.deserialize(from: json.rawString())
                    print("消息内容：",text?.message)
                    print("正文数目:",text?.content?.count)
                    if let number = json["number"].string{
                        
                        print("消息数目:",number)
                    }
                }
            case false :
                print(response.result.error)
            }
        }
    }
    func textPost(){
        let url="https://www.zaixianbiji.com/api/v1/textadd?token=eeeee";
        var dic = [String:String]()
        dic["category"] = "CodingFire"
        dic["content"] = "1234567890"
        dic["title"] = "新的标题"
        
        let headers: HTTPHeaders = [
            "Authorization": "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==",
            "Accept": "application/json"
        ]
        Alamofire.request(url,method : .post , parameters : dic, encoding: JSONEncoding.default ,  headers: headers).responseJSON{ (response)  in
           if let dic = response.result.value {
                print("dic: \(dic)")
            }
            else
            {
                print("dic: \(response)")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //getLogin()
        textPost()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
