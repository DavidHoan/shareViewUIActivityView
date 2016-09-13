//
//  ViewController+share.h
//  Pods
//
//  Created by Dong Quoc on 9/13/16.
//
//

#import <UIKit/UIKit.h>

@interface UIViewController(share)

-(void)shareContent:(NSString*)message imageName:(NSString*)imageName function:(SEL)selector;

@end
