//
//  WebInfoViewController.h
//  Wembley
//
//  Created by MacBookPro on 01/12/2016.
//  Copyright © 2016 MacBookPro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebInfoViewController : UIViewController {
    IBOutlet UIWebView *webpage;
    IBOutlet UIActivityIndicatorView *pageLoading;
    IBOutlet UIView *errorMsg;
}

@property (retain, nonatomic) UIWebView *webpage;
@property (retain, nonatomic) UIActivityIndicatorView *pageLoading;
@property (retain, nonatomic) UIView *errorMsg;


@end
