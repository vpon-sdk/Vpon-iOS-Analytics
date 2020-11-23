//
//  ViewController.m
//  VponDMPExampleObjC
//
//  Created by Yi-Hsiang, Chien on 2020/11/23.
//

#import "ViewController.h"
#import "VpadnAnalytics.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction) sendEvent:(id)sender {
    VpadnAnaDictionaryBuilder *builder = [VpadnAnaDictionaryBuilder createEventWithEventName:@"login" extraData:[@{} mutableCopy]];
    [[VpadnAnalytics sharedInstance].defaultTracker send:builder];
}


@end
