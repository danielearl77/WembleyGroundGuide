//
//  WebInfoViewController.m
//  Wembley
//
//  Created by MacBookPro on 01/12/2016.
//  Copyright © 2016 MacBookPro. All rights reserved.
//

#import "WebInfoViewController.h"

@interface WebInfoViewController ()

@end

@implementation WebInfoViewController


@synthesize webpage, pageLoading, errorMsg;



- (void)webViewDidStartLoad:(UIWebView *)webpage
{
    errorMsg.hidden=YES;
    [pageLoading startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webpage
{
    errorMsg.hidden=YES;
    [pageLoading stopAnimating];
}

- (void)webView:(UIWebView *)webpage didFailLoadWithError:(NSError *)error
{
    errorMsg.hidden=NO;
    [pageLoading stopAnimating];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *webAddress = @"http://en.wikipedia.org/wiki/Wembley_stadium";
    
    NSURL *addr = [NSURL URLWithString:webAddress];
    NSURLRequest *requestpage = [NSURLRequest requestWithURL:addr];
    [webpage loadRequest:requestpage];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
