//
//  Model.h
//  FinalProject
//
//  Created by Admin on 12/30/15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@protocol ModelProtocol <NSObject>

-(void)addImage:(UIImage*)image;
-(NSMutableArray*)getImages;

@end

@interface Model : NSObject<ModelProtocol>{
    id<ModelProtocol> modelImpl;
}

+(Model*) instance;

@end
