//
//  SecViewController.m
//  Collection_View
//
//  Created by Tiwari, Kanchan Kumar (Cognizant) on 01/09/21.
//

#import "SecViewController.h"
#import "ViewController.h"
@interface SecViewController ()

@end

@implementation SecViewController
@synthesize strimg,image2;

- (void)viewDidLoad {
    [super viewDidLoad];
    image2.image= [UIImage imageNamed:strimg];
}
@end
