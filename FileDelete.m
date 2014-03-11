//
//  FileDelete.m
//  TableView
//
//  Created by Anthony Levings on 11/03/2014.
//  Copyright (c) 2014 Gylphi. All rights reserved. You are free to use this code but please acknowledge copyright owner.
//

#import "FileDelete.h"

@implementation FileDelete



+ (NSURL *)applicationDocumentsDirectory {
    
    
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory
                                                   inDomains:NSUserDomainMask] lastObject];
}

+ (NSURL *)applicationLibraryDirectory {
    
    
    return [[[NSFileManager defaultManager] URLsForDirectory:NSLibraryDirectory
                                                   inDomains:NSUserDomainMask] lastObject];
}

+(NSString *)stripSlashIfNeeded:(NSString *)stringWithPossibleSlash {
    
    // If the file name contains a slash at the beginning then we remove so that we don't end up with two
    if ([stringWithPossibleSlash compare:@"/" options:NSLiteralSearch range:NSMakeRange(0, 1)]==NSOrderedSame) {
        stringWithPossibleSlash = [stringWithPossibleSlash substringFromIndex:1];
    }
    // Return the string with no slash at the beginning
    return stringWithPossibleSlash;
}


+(BOOL)deleteFileFromDocumentsDirectory:(NSString *)path inSubDirectory:(NSString *)subdirectory
{
    // Remove unnecessary slash if need
    path = [self stripSlashIfNeeded:path];
    subdirectory = [self stripSlashIfNeeded:subdirectory];
    
    // Create generic beginning to file save path
    NSMutableString *deletePath = [[NSMutableString alloc] initWithFormat:@"%@/",[self applicationDocumentsDirectory].path];
    
    if (subdirectory){
        [deletePath appendString:subdirectory];
        // Check whether the specified subdirectory exists
        BOOL dir;
        [[NSFileManager defaultManager] fileExistsAtPath:deletePath isDirectory:&dir];
        if (dir==NO) {
            return dir;
        }
        [deletePath appendString:@"/"];
    }
    
    // Add requested save path
    [deletePath appendString:path];
    // Save the file and see if it was successful
    NSError *error;
    BOOL ok = [[NSFileManager defaultManager] removeItemAtPath:[deletePath copy] error:&error];
    
    if (error) NSLog(@"%@", error);
    
    // Return status of file save
    return ok;
    
}

+(BOOL)deleteFileFromLibraryDirectory:(NSString *)path inSubDirectory:(NSString *)subdirectory
{
    
    // Remove unnecessary slash if need
    path = [self stripSlashIfNeeded:path];
    subdirectory = [self stripSlashIfNeeded:subdirectory];
    
    // Create generic beginning to file save path
    NSMutableString *deletePath = [[NSMutableString alloc] initWithFormat:@"%@/",[self applicationLibraryDirectory].path];
    
    if (subdirectory){
        [deletePath appendString:subdirectory];
        // Check whether the specified subdirectory exists
        BOOL dir;
        [[NSFileManager defaultManager] fileExistsAtPath:deletePath isDirectory:&dir];
        if (dir==NO) {
            return dir;
        }
        [deletePath appendString:@"/"];
    }
    
    // Add requested save path
    [deletePath appendString:path];
    // Save the file and see if it was successful
    NSError *error;
    BOOL ok = [[NSFileManager defaultManager] removeItemAtPath:[deletePath copy] error:&error];
    
    if (error) NSLog(@"%@", error);
    // Return status of file save
    return ok;
}

+(BOOL)deleteSubDirectoryFromDocumentsDirectory:(NSString *)subdirectory {
    // Remove unnecessary slash if need
    subdirectory = [self stripSlashIfNeeded:subdirectory];
    
    // Create generic beginning to file save path
    NSMutableString *deletePath = [[NSMutableString alloc] initWithFormat:@"%@/",[self applicationDocumentsDirectory].path];
    
    if (subdirectory){
        [deletePath appendString:subdirectory];
        // Check whether the specified subdirectory exists
        BOOL dir;
        [[NSFileManager defaultManager] fileExistsAtPath:deletePath isDirectory:&dir];
        if (dir==NO) {
            return dir;
        }
      
    }
    
    NSError *error;
    // Save the file and see if it was successful
    BOOL ok = [[NSFileManager defaultManager] removeItemAtPath:deletePath error:&error];
    
    if (error) NSLog(@"%@", error);
    
    // Return status of file save
    return ok;
    
}
+(BOOL)deleteSubDirectoryFromLibraryDirectory:(NSString *)subdirectory {
    // Remove unnecessary slash if need
    subdirectory = [self stripSlashIfNeeded:subdirectory];
    
    // Create generic beginning to file save path
    NSMutableString *deletePath = [[NSMutableString alloc] initWithFormat:@"%@/",[self applicationLibraryDirectory].path];
    
    if (subdirectory){
        [deletePath appendString:subdirectory];
        // Check whether the specified subdirectory exists
        BOOL dir;
        [[NSFileManager defaultManager] fileExistsAtPath:deletePath isDirectory:&dir];
        if (dir==NO) {
            return dir;
        }
        
    }
    
    NSError *error;
    // Save the file and see if it was successful
    BOOL ok = [[NSFileManager defaultManager] removeItemAtPath:deletePath error:&error];
    
    if (error) NSLog(@"%@", error);
    
    // Return status of file save
    return ok;
    
}


@end
