//
//  ViewController.m
//  BarButtonItemBlockTarget
//
//  Created by BB9z on 15/12/2016.
//  Copyright © 2016 BB9z. All rights reserved.
//

#import "ViewController.h"
@import ObjectiveC;

UIBarButtonItem *_Nonnull DebugMenuItem2(NSString *_Nonnull title, dispatch_block_t _Nonnull actionBlock) {
    NSCAssert(actionBlock, nil);
    UIBarButtonItem *bi = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:actionBlock action:@selector(description)];
    NSCAssert(bi.target, nil);
    objc_setAssociatedObject(bi, __PRETTY_FUNCTION__, actionBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return bi;
}

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableArray<UIBarButtonItem *> *items = [NSMutableArray arrayWithCapacity:10];
    [items addObject:DebugMenuItem2(@"A", ^{
        // I'm ok
    })];

    NSLog(@"A added.");

    [items addObject:DebugMenuItem2(@"pp", ^{
        NSLog(@"This will crash %@", self);
    })];
}

@end
