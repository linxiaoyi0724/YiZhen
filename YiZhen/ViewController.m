//
//  ViewController.m
//  YiZhen
//
//  Created by linxiaoyi on 2021/10/22.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIImageView* mImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 280, 250)];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
    self.mImageView = imageView;
    [self onCustom];
}

- (void) onCustom{
    UIImage *image = [UIImage imageNamed:@"color"];
    if(image){
        self.mImageView.image = image;
    }
}

@end
