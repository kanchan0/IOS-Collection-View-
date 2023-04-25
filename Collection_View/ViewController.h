//
//  ViewController.h
//  Collection_View
//
//  Created by Tiwari, Kanchan Kumar (Cognizant) on 01/09/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property(strong,nonatomic)NSMutableArray *arrimg;
@property(strong,nonatomic)NSMutableArray *arrLabel;

@end

