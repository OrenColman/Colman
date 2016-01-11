//
//  Model.m
//  FinalProject
//
//  Created by Admin on 12/30/15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "Model.h"
#import "ModelParse.h"

@interface Model()
@end

@implementation Model

static Model* instance = nil;

+(Model*)instance{
    if(instance == nil){
        instance = [[Model alloc] init];
    }
    
    return instance;
}

- (NSString *) applicationDocumentsDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return basePath;
}

-(id)init{
    self = [super init];
    if(self){
        
        //modelImpl = [[ModelSql alloc] init]; //saves students in sqlite3
        //modelImpl = [[ModelMemory alloc] init]; //saves students in app memory (temp)
        modelImpl = [[ModelParse alloc] init];
        
    }
    return self;
}

-(void)addImage:(UIImage*)image{
    
    [modelImpl addImage:image];
}

-(NSMutableArray*)getImages{
    return [modelImpl getImages];
}

@end

