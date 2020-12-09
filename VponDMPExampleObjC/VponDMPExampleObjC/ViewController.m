//
//  ViewController.m
//  VponDMPExampleObjC
//
//  Created by Yi-Hsiang, Chien on 2020/11/23.
//

#import "ViewController.h"
#import <VponDataAnalytics/VponDataAnalytics.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction) sendEvent:(id)sender {
    VDABuilder *builder = [VDABuilder createEventWithEventName:@"login" extraData:nil];
    VDATracker *tracker = [[VDATracker alloc] init];
    [tracker send:builder];
}


@end
