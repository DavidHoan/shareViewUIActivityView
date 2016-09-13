//
//  ViewController+share.m
//  Pods
//
//  Created by Dong Quoc on 9/13/16.
//
//

#import "ViewController+share.h"


@implementation UIViewController(share)

-(void)shareContent:(NSString*)message imageName:(NSString*)imageName function:(SEL)selector{
    //NSString * message = message;
    UIImage * image = [UIImage imageNamed:imageName];
    if (image==nil) { NSLog(@"Không tìm thấy ảnh"); return; }
    NSArray * shareItems = @[message, image];
    
    UIActivityViewController * avc = [[UIActivityViewController alloc] initWithActivityItems:shareItems applicationActivities:nil];
    
    avc.completionWithItemsHandler = ^(NSString *activityType, BOOL completed, NSArray *returnedItems, NSError *activityError) {
        NSLog(@"completionWithItemsHandler, activityType: %@, completed: %d, returnedItems: %@, activityError: %@", activityType, completed, returnedItems, activityError);
        
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self performSelector:selector withObject:@{@"status":activityType, @"complete":[NSString stringWithFormat:@"%d", completed]}];
#pragma clang diagnostic pop
    };
    
    [self presentViewController:avc animated:YES completion:nil];
}

- (void) fooOneInput:(NSDictionary*) params {
    //NSString* param1 = [params objectForKey:@"status"];
    //NSString* param2 = [params objectForKey:@"complete"];
    //[self fooFirstInput:param1 secondInput:param2];
}

@end
