//
//  FileDelete.h
//
//  Created by Anthony Levings on 11/03/2014.
//  Copyright (c) 2014 Gylphi. All rights reserved. You are free to use this code but please acknowledge copyright owner.
//

#import <Foundation/Foundation.h>

@interface FileDelete : NSObject

#pragma mark - file methods
+(BOOL)deleteFileFromLibraryDirectory:(NSString *)path inSubDirectory:(NSString *)subdirectory;
+(BOOL)deleteFileFromDocumentsDirectory:(NSString *)path inSubDirectory:(NSString *)subdirectory;

#pragma mark - subdirectory methods
+(BOOL)deleteSubDirectoryFromLibraryDirectory:(NSString *)subdirectory;
+(BOOL)deleteSubDirectoryFromDocumentsDirectory:(NSString *)subdirectory;

@end
