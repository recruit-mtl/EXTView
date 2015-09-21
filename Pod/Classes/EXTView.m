//
//  EXTView.m
//  Pods
//
//  Created by Recruit Holdings Co.,Ltd. Media Technology Lab. on 9/15/15.
//
//

#import "EXTView.h"

@interface EXTLayer : CAGradientLayer
@property (nonatomic) CGColorRef startColor;
@property (nonatomic) CGColorRef endColor;
@end

@implementation EXTLayer

- (instancetype)init
{
    if (self = [super init]) {
        self.colors = @[(__bridge id)CGColorRetain([UIColor clearColor].CGColor),
                        (__bridge id)CGColorRetain([UIColor clearColor].CGColor)];
    }
    return self;
}

- (void)dealloc
{
    CGColorRelease(self.startColor);
    CGColorRelease(self.endColor);
}

- (CGColorRef)startColor
{
    return (__bridge CGColorRef)self.colors.firstObject;
}

- (void)setStartColor:(CGColorRef)startColor
{
    CGColorRef oldColor = self.startColor;
    self.colors = @[(__bridge id)CGColorRetain(startColor),
                    (__bridge id)self.endColor];
    CGColorRelease(oldColor);
}

- (CGColorRef)endColor
{
    return (__bridge CGColorRef)self.colors.lastObject;
}

- (void)setEndColor:(CGColorRef)endColor
{
    CGColorRef oldColor = self.endColor;
    self.colors = @[(__bridge id)self.startColor,
                    (__bridge id)CGColorRetain(endColor)];
    CGColorRelease(oldColor);
}

@end



@interface EXTView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTLabel ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTLabel

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTButton ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTButton

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTSegmentedControl ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTSegmentedControl

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTTextField ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTTextField

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTSlider ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTSlider

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTSwitch ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTSwitch

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTActivityIndicatorView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTActivityIndicatorView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTProgressView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTProgressView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTPageControl ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTPageControl

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTStepper ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTStepper

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTTableView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTTableView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTImageView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTImageView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTCollectionView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTCollectionView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTCollectionViewCell ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTCollectionViewCell

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTCollectionReusableView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTCollectionReusableView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTTextView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTTextView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTScrollView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTScrollView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTPickerView ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTPickerView

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTNavigationBar ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTNavigationBar

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTToolbar ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTToolbar

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTTabBar ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTTabBar

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end




@interface EXTSearchBar ()
@property (readonly) EXTLayer *ext_layer;
@end

@implementation EXTSearchBar

+ (Class)layerClass
{
    return [EXTLayer class];
}

- (EXTLayer *)ext_layer
{
    return (EXTLayer *)self.layer;
}

- (void)ext_setup
{
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self ext_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self ext_setup];
    }
    return self;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (UIColor *)bgStartColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.startColor];
}

- (void)setBgStartColor:(UIColor *)color
{
    self.ext_layer.startColor = color.CGColor;
}

- (CGPoint)bgStartPoint
{
    return self.ext_layer.startPoint;
}

- (void)setBgStartPoint:(CGPoint)gradientStartPoint
{
    self.ext_layer.startPoint = gradientStartPoint;
}

- (UIColor *)bgEndColor:(UIColor *)color
{
    return [UIColor colorWithCGColor:self.ext_layer.endColor];
}

- (void)setBgEndColor:(UIColor *)color
{
    self.ext_layer.endColor = color.CGColor;
}

- (CGPoint)bgEndPoint
{
    return self.ext_layer.endPoint;
}

- (void)setBgEndPoint:(CGPoint)gradientEndPoint
{
    self.ext_layer.endPoint = gradientEndPoint;
}

@end
