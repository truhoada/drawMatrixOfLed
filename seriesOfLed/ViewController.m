//
//  ViewController.m
//  seriesOfLed
//
//  Created by admin on 7/20/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    CGFloat _margin; // > ruby radius
//    int _numberOfRuby;
//    CGFloat _space; // > ruby diameter
//    CGFloat _rubyDiameter;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _margin = 40;
//    _rubyDiameter = 24;
    [self drawSeriesOfRuby:9 numberRow:15];
    //    [self numberOfRubyvsSpace];
    //    [self checkSizeOfiPhone];
    //    [self rubyCGPointMakeX:320/2 rubyCGPointMakeY:568/3 rubyTag:1];
    
}
// Put a Image to a determined Position =========================
-(void) rubyCGPointMakeX: (CGFloat) x
        rubyCGPointMakeY: (CGFloat) y
                 rubyTag:(CGFloat) tag;
{
    UIImageView *ruby = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"rubyRed"]];
    ruby.center = CGPointMake(x, y);
    ruby.tag = tag;
    [self.view addSubview:ruby];
    //    NSLog(@"w = %f, h= %f",ruby.bounds.size.width,ruby.bounds.size.height);
}

// Distance between Rubys in a row =========================
-(CGFloat)spaceBetweenRubyCenterByRow: (int) n {
    return (self.view.bounds.size.width - 2* _margin)/(n-1);
}

// Distance between Rubys in a column ======================
-(CGFloat)spaceBetweenRubyCenterByColumn: (int) m {
    return (self.view.bounds.size.height - 2* _margin)/(m-1);
}
//-(void)numberOfRubyvsSpace{
//    bool stop = false;
//    int n =3;
//    while (!stop) {
//        CGFloat space = [self spaceBetweenRubyCenter: n];
//        if (space< _rubyDiameter) {
//            stop = true;
//        }else {
//            NSLog(@"Number of Ruby %d, space between ruby center %3.0f",n,space);
//        }
//        n++;
//    }
//}

// ======================   Draw Matrix Ruby   ======================
-(void)drawSeriesOfRuby: (int)numberRubys numberRow:(int) numberRow {
    CGFloat spaceRow = [self spaceBetweenRubyCenterByRow:numberRubys];
    CGFloat spaceColumn = [self spaceBetweenRubyCenterByColumn:numberRow];
    for (int j=0; j< numberRow; j++) {
        for (int i=0; i<numberRubys; i++) {
            [self rubyCGPointMakeX:_margin+ i*spaceRow
                  rubyCGPointMakeY:_margin+ j*spaceColumn
                           rubyTag:i+100];}
    }
}
//-(void) checkSizeOfiPhone{
//    CGSize size = self.view.bounds.size;
//    NSLog(@"w = %f, h = %f",size.width,size.height);
//}

@end
