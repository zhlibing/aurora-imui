//
//  IMUITextMessageCell.swift
//  IMUIChat
//
//  Created by oshumini on 2017/4/1.
//  Copyright © 2017年 HXHG. All rights reserved.
//

import UIKit

class IMUITextMessageCell: IMUIBaseMessageCell {


  
  var textMessageLable = IMUITextView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.bubbleView.addSubview(textMessageLable)
    textMessageLable.numberOfLines = 0
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
  }
  
  override func presentCell(with message: IMUIMessageModel, delegate: IMUIMessageMessageCollectionViewDelegate?) {
    super.presentCell(with: message, delegate: delegate)

    let layout = message.layout

    self.textMessageLable.frame = UIEdgeInsetsInsetRect(CGRect(origin: CGPoint.zero, size: layout.bubbleFrame.size), layout.bubbleContentInset)
    self.layoutToText(with: message.textMessage(), isOutGoing: message.isOutGoing)
  }
  
  func layoutToText(with text: String, isOutGoing: Bool) {
    textMessageLable.text = text
    if isOutGoing {
      textMessageLable.textColor = UIColor(netHex: 0x7587A8)
    } else {
      textMessageLable.textColor = UIColor.white
    }
    
  }
  
}