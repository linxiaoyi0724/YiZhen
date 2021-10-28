//
//  ViewController.m
//  YiZhen
//
//  Created by linxiaoyi on 2021/10/22.
//

#import "ViewController.h"

@interface ViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (nonatomic, strong) UIImageView* mImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 280, 280)];
    _mImageView.backgroundColor = [UIColor yellowColor];
    _mImageView.layer.cornerRadius = 50;
    _mImageView.layer.masksToBounds = YES;
    _mImageView.tag = 101;
    [self.view addSubview:_mImageView];
    
    _mImageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [_mImageView addGestureRecognizer:tap];
    
}

- (void) tapAction:(UIImageView* )sender{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.delegate = self;
    [self presentViewController:imagePicker animated:YES completion:^{NSLog(@"打开相册");}];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:^{NSLog(@"取消");}];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    _mImageView.image = info[UIImagePickerControllerEditedImage];
    NSLog(@"%@",info);
    [picker dismissViewControllerAnimated:YES completion:^{NSLog(@"选照片");}];
}

- (void) onCustom{
    UIImage *image = [UIImage imageNamed:@"color"];
    if(image){
        self.mImageView.image = image;
    }
}

@end
