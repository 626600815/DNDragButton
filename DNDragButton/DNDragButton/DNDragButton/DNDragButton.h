//
//  DNDragButton.h
//  DNDragButton
//
//  Created by mainone on 16/6/3.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DNDragButton : UIButton {
    BOOL _isDragging;
    BOOL _singleTapBeenCanceled;
    CGPoint _beginLocation;
}

@property (nonatomic) BOOL draggable;
@property (nonatomic) BOOL autoDocking;

/**
 *  是否存在导航条(存在的话就往下移动64)
 */
@property (nonatomic, assign) BOOL hasNav;


- (id)initInKeyWindowWithFrame:(CGRect)frame;
- (id)initInView:(id)view WithFrame:(CGRect)frame;

- (BOOL)isDragging;

+ (void)removeAllFromKeyWindow;
+ (void)removeAllFromView:(id)superView;


@end