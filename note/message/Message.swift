//
//  Message.swift
//  note
//
//  Created by 连波 on 2018/3/18.
//  Copyright © 2018年 连波. All rights reserved.
//

struct Message {
    var fromUserName=""
    var title=""
    var content=""
    var datetime=""
    
    init(fromUserName:String,title:String,content:String,datetime:String) {
        self.fromUserName=fromUserName
        self.title=title
        self.content=content
        self.datetime=datetime
    }
}
