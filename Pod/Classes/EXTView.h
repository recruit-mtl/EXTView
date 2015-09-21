//
//  EXTView.h
//  Pods
//
//  Created by emeitch on 9/15/15.
//
//


#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface EXTView : UIView

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadius;

@property (nonatomic) IBInspectable UIColor *bgStartColor;
@property (nonatomic) IBInspectable CGPoint bgStartPoint;
@property (nonatomic) IBInspectable UIColor *bgEndColor;
@property (nonatomic) IBInspectable CGPoint bgEndPoint;

@end



IB_DESIGNABLE
@interface EXTImageView : UIImageView

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadius;

@property (nonatomic) IBInspectable UIColor *bgStartColor;
@property (nonatomic) IBInspectable CGPoint bgStartPoint;
@property (nonatomic) IBInspectable UIColor *bgEndColor;
@property (nonatomic) IBInspectable CGPoint bgEndPoint;

@end



IB_DESIGNABLE
@interface EXTButton : UIButton

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadius;

@property (nonatomic) IBInspectable UIColor *bgStartColor;
@property (nonatomic) IBInspectable CGPoint bgStartPoint;
@property (nonatomic) IBInspectable UIColor *bgEndColor;
@property (nonatomic) IBInspectable CGPoint bgEndPoint;

@end



