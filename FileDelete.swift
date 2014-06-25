import Foundation


class FileDelete {
    
    class func deleteFileFromDocumentsDirectory(path:String, subdirectory:String?) -> Bool
    {
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        // Create generic beginning to file delete path
        var deletePath = self.applicationDocumentsDirectory().path+"/"
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            self.createSubDirectory(deletePath)
            deletePath += "/"
        }
        
        // Add requested delete path
        deletePath += newPath
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file save
        return ok;
        
    }
    
    class func deleteFileFromLibraryDirectory(path:String, subdirectory:String?) -> Bool
    {
        
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        
        // Create generic beginning to file delete path
        var deletePath = self.applicationLibraryDirectory().path+"/"
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            self.createSubDirectory(deletePath)
            deletePath += "/"
        }
        
        // Add requested delete path
        deletePath += newPath
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file delete
        return ok;
    }
    
    class func deleteFileFromTemporaryDirectory(path:String, subdirectory:String?) -> Bool
    {
        
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        
        // Create generic beginning to file delete path
        var deletePath = self.applicationTemporaryDirectory().path+"/"
        
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            self.createSubDirectory(deletePath)
            deletePath += "/"
        }
        
        // Add requested delete path
        deletePath += newPath
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file delete
        return ok;
    }
    
    class func deleteFileFromCachesDirectory(path:String, subdirectory:String?) -> Bool
    {
        
        
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        
        // Create generic beginning to file delete path
        var deletePath = self.applicationCachesDirectory().path+"/"
        
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            self.createSubDirectory(deletePath)
            deletePath += "/"
        }
        
        // Add requested delete path
        deletePath += newPath
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file delete
        return ok;
    }
    
    class func deleteFileFromApplicationSupportDirectory(path:String, subdirectory:String?, excludeFromBackup:Bool) -> Bool
    {
        
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        
        // Create generic beginning to file save path
        var deletePath = self.applicationSupportDirectory().path+"/"
        
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            self.createSubDirectory(deletePath)
            deletePath += "/"
        }
        
        // Add requested delete path
        deletePath += newPath
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file delete
        return ok;
    }
    
    // Delete folders
    
    class func deleteSubDirectoryFromDocumentsDirectory(subdirectory:String) -> Bool
    {
        // Remove unnecessary slash if need
        var newSubdirectory:String? = self.stripSlashIfNeeded(subdirectory)
        
        // Create generic beginning to file delete path
        var deletePath = self.applicationDocumentsDirectory().path+"/"
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            var dir:ObjCBool=true
            NSFileManager.defaultManager().fileExistsAtPath(deletePath, isDirectory:&dir)
            if (dir==false) {
                return dir;
            }
        }
        
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file save
        return ok;
        
    }
    
    class func deleteSubDirectoryFromLibraryDirectory(subdirectory:String) -> Bool
    {
        // Remove unnecessary slash if need
        var newSubdirectory:String? = self.stripSlashIfNeeded(subdirectory)
        
        // Create generic beginning to file delete path
        var deletePath = self.applicationLibraryDirectory().path+"/"
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            var dir:ObjCBool=true
            NSFileManager.defaultManager().fileExistsAtPath(deletePath, isDirectory:&dir)
            if (dir==false) {
                return dir;
            }
        }
        
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file save
        return ok;
        
    }
    
    class func deleteSubDirectoryFromApplicationSupportDirectory(subdirectory:String) -> Bool
    {
        // Remove unnecessary slash if need
        var newSubdirectory:String? = self.stripSlashIfNeeded(subdirectory)
        
        // Create generic beginning to file delete path
        var deletePath = self.applicationSupportDirectory().path+"/"
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            var dir:ObjCBool=true
            NSFileManager.defaultManager().fileExistsAtPath(deletePath, isDirectory:&dir)
            if (dir==false) {
                return dir;
            }
        }
        
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file save
        return ok;
        
    }
    
    class func deleteSubDirectoryFromTemporaryDirectory(subdirectory:String) -> Bool
    {
        // Remove unnecessary slash if need
        var newSubdirectory:String? = self.stripSlashIfNeeded(subdirectory)
        
        // Create generic beginning to file delete path
        var deletePath = self.applicationTemporaryDirectory().path+"/"
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            var dir:ObjCBool=true
            NSFileManager.defaultManager().fileExistsAtPath(deletePath, isDirectory:&dir)
            if (dir==false) {
                return dir;
            }
        }
        
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file save
        return ok;
        
    }
    
    class func deleteSubDirectoryFromCachesDirectory(subdirectory:String) -> Bool
    {
        // Remove unnecessary slash if need
        var newSubdirectory:String? = self.stripSlashIfNeeded(subdirectory)
        
        // Create generic beginning to file delete path
        var deletePath = self.applicationCachesDirectory().path+"/"
        
        if newSubdirectory {
            deletePath += newSubdirectory!
            var dir:ObjCBool=true
            NSFileManager.defaultManager().fileExistsAtPath(deletePath, isDirectory:&dir)
            if (dir==false) {
                return dir;
            }
        }
        
        
        
        // Delete the file and see if it was successful
        var error:NSError?
        var ok:Bool = NSFileManager.defaultManager().removeItemAtPath(deletePath, error: &error)
        
        if error {
            println(error)
        }
        // Return status of file save
        return ok;
        
    }
    
    
    // private methods
    
    //directories
    
    class func applicationDocumentsDirectory() -> NSURL {
        
        var documentsDirectory:String?
        var paths:AnyObject[] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true);
        if paths.count > 0 {
            if let pathString = paths[0] as? NSString {
                documentsDirectory = pathString
            }
        }
        
        return NSURL.URLWithString(documentsDirectory)
    }
    
    class func applicationLibraryDirectory() -> NSURL {
        var libraryDirectory:String?
        var paths:AnyObject[] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.LibraryDirectory, NSSearchPathDomainMask.UserDomainMask, true);
        if paths.count > 0 {
            if let pathString = paths[0] as? NSString {
                libraryDirectory = pathString
            }
        }
        return NSURL.URLWithString(libraryDirectory)
    }
    
    class func applicationSupportDirectory() -> NSURL {
        var applicationSupportDirectory:String?
        var paths:AnyObject[] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.ApplicationSupportDirectory, NSSearchPathDomainMask.UserDomainMask, true);
        if paths.count > 0 {
            if let pathString = paths[0] as? NSString {
                applicationSupportDirectory = pathString
            }
        }
        return NSURL.URLWithString(applicationSupportDirectory)
    }
    
    
    
    
    
    class func applicationTemporaryDirectory() -> NSURL {
        
        var temporaryDirectory:String? = NSTemporaryDirectory();
        
        return NSURL.URLWithString(temporaryDirectory)
        
    }
    class func applicationCachesDirectory() -> NSURL {
        
        var cachesDirectory:String?
        
        var paths = NSSearchPathForDirectoriesInDomains(.ApplicationSupportDirectory,.UserDomainMask, true);
        
        if paths.count > 0 {
            if let pathString = paths[0] as? NSString {
                cachesDirectory = pathString
            }
        }
        return NSURL.URLWithString(cachesDirectory);
    }
    //pragma mark - strip slashes
    
    class func stripSlashIfNeeded(stringWithPossibleSlash:String) -> String {
        var stringWithoutSlash:String = stringWithPossibleSlash
        // If the file name contains a slash at the beginning then we remove so that we don't end up with two
        if stringWithPossibleSlash.hasPrefix("/") {
            stringWithoutSlash = stringWithPossibleSlash.substringFromIndex(1)
        }
        // Return the string with no slash at the beginning
        return stringWithoutSlash
    }
    
    class func createSubDirectory(subdirectoryPath:NSString) -> Bool {
        var error:NSError?
        var isDir:ObjCBool=false;
        var exists:Bool = NSFileManager.defaultManager().fileExistsAtPath(subdirectoryPath, isDirectory:&isDir)
        if (exists) {
            /* a file of the same name exists, we don't care about this so won't do anything */
            if isDir==true {
                /* subdirectory already exists, don't create it again */
                return true;
            }
        }
        var success:Bool = NSFileManager.defaultManager().createDirectoryAtPath(subdirectoryPath, withIntermediateDirectories:true, attributes:nil, error:&error)
        
        if error { println(error) }
        
        return success;
    }
}
