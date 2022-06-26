//
//  ViewController.m
//  ObjSwiftTest
//
//  Created by jiin heo on 2022/06/26.
//

#import "ViewController.h"
#import "ObjSwiftTest-Swift.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *label;
@property (strong, nonatomic) UIButton *nextButton;
@property (strong, nonatomic) Test *test;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self setupUI];
    
    _test = [Test new];
    [_test hiWithName:@"jiin"];
}

- (void)setupUI {
    [self.view addSubview:self.label];
    [self.view addSubview:self.nextButton];
}

- (void)buttonClick{
    NSLog(@"~~~~~~ test~~~~~~");
    TestVC *vc = [TestVC new];
    [self.navigationController pushViewController:vc animated:true];
}

- (UILabel*) label {
    if (_label == nil) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
        _label.text = @"안녕 난 옵젝씨야 :)";
        _label.font = [UIFont systemFontOfSize:20 weight:bold];
        _label.textColor = UIColor.blackColor;
    }
    return _label;
}

- (UIButton*) nextButton {
    if (_nextButton == nil) {
        _nextButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 200)];
        [_nextButton setTitle:@"옵젝씨 -> 스위프트" forState:UIControlStateNormal];
        [_nextButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        _nextButton.backgroundColor = UIColor.blueColor;
    }
    return _nextButton;
}

@end
