 //
//  ModelParse.m
//  FinalProject
//
//  Created by Admin on 12/30/15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "ModelParse.h"
#import <Parse/Parse.h>


@implementation ModelParse

-(id)init{
    self = [super init];
    if(self){
        
        // Initialize Parse.
        [Parse setApplicationId:@"G5KugLJcrUjuE4ClWQa8dh9325jRTPd8Q1oRxbjM"
                      clientKey:@"Yx9rqmHoVBuiklXcI2GowHYDNK0uQb94QihNH6nT"];
        
    }
    return self;
}

-(void)addImage:(UIImage*)image{
    
    NSData* data = UIImageJPEGRepresentation(image, 0.5f);
    PFFile *imageFile = [PFFile fileWithName:@"Image.jpg" data:data];
    
    [imageFile saveInBackgroundWithBlock:^(BOOL succeeded, NSError* error){
        if(!error){
            PFObject* newPhotoObject = [PFObject objectWithClassName:@"PhotoObject"];
            
            [newPhotoObject setObject:imageFile forKey:@"image"];
            [newPhotoObject  setValue:@"123" forKey:@"imageId" ];
            
            [newPhotoObject saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
                if(!error){
                    NSLog(@"Saved");
                }
                else{
                    NSLog(@"Error: %@ %@", error, [error userInfo]);
                }
            }];
        }
    }];
    
}


-(NSMutableArray*)getImages{
    
    NSMutableArray* images = [[NSMutableArray alloc] init];
    
    PFQuery* query = [PFQuery queryWithClassName:@"PhotoObject"];
    NSArray* pfobjs = [query findObjects];
    for (PFObject* obj in pfobjs) {
        
        NSLog([NSString stringWithFormat:@"id: %@", obj[@"imageId"]]);
        
        PFFile *eventImage = obj[@"image"]; //ProfileImageFile is the name of key you stored the image file
        
        [images addObject:eventImage];
        
    }
    
    return images;
}

@end
