//
//  Text.swift
//  note
//
//  Created by 连波 on 2018/3/20.
//  Copyright © 2018年 连波. All rights reserved.
//
import HandyJSON
class Text : HandyJSON{
    var code : String?
    var message : String?
    var number : String?
    var content:[OneText]?
    required init() {}
}
class OneText : HandyJSON{
    var textid : String?
    var createdate : String?
    var category : String?
    var title : String?
    var content : String?
    required init() {}
}
