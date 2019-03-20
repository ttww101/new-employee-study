//
//  ViewController.m
//  test
//
//  Created by PengFan Hsieh on 2018/12/13.
//  Copyright © 2018 bc. All rights reserved.
//

#import "ViewController.h"
#import <AVOSCloud/AVOSCloud.h>
#import "ADEvent.h"
#import "ADWKWebViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSMutableArray <ADEvent *> *adArr;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.adArr = [[NSMutableArray <ADEvent *> alloc]init];
    AVQuery *query = [AVQuery queryWithClassName:@"ADEvent"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            for (NSDictionary *object in objects) {
                ADEvent *event = [ADEvent initWithObject:object];
                [self.adArr addObject:event];
            }
            
            if ([self.adArr count] > 0) {
                NSString *url = [self.adArr firstObject].url;
                
                NSURL *check = [NSURL URLWithString:url];
                
                if (check == nil) {
                    [self performSegueWithIdentifier:@"sgMain" sender:nil];
                }
                else {
                    ADWKWebViewController *VC = [ADWKWebViewController initWithURL:url];
                    [[[[UIApplication sharedApplication]delegate]window]setRootViewController:VC];
                }
            }
            else {
                [self performSegueWithIdentifier:@"sgMain" sender:nil];
            }
        }
    }];
}

- (IBAction)btnClicked:(id)sender {
    [self performSegueWithIdentifier:@"sgMain" sender:nil];
}

@end
