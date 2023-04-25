//
//  ViewController.m
//  Collection_View
//
//  Created by Tiwari, Kanchan Kumar (Cognizant) on 01/09/21.
//

#import "ViewController.h"
#import "SecViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arrimg =[[NSMutableArray alloc]initWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"7.jpg",@"8.jpg",@"9.jpg",@"10.jpg",@"11.jpg",@"12.jpg",@"13.jpg",@"14.jpg",@"15.jpg",@"16.jpg",@"17.jpg",@"18.jpg",@"19.jpg"@"20.jpg",@"21.jpg"@"3.jpg"@"8.jpg",@"9.jpg",@"10.jpg",@"11.jpg",@"12.jpg",@"13.jpg",@"14.jpg",@"15.jpg",@"16.jpg",@"17.jpg",@"18.jpg",@"19.jpg"@"20.jpg",nil];
    
    _arrLabel=[[NSMutableArray alloc]initWithObjects:@"kokata", nil];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _arrimg.count;;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIImageView *img1 = (UIImageView *)[cell viewWithTag:1];
    img1.image = [UIImage imageNamed:[_arrimg objectAtIndex:indexPath.row]];
   
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    SecViewController *s = [self.storyboard instantiateViewControllerWithIdentifier:@"sec"];
    s.strimg =[_arrimg objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:s animated:YES];
}
@end
