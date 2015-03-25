FileDelete
==========

Simple iOS class to delete files and subdirectories from the Documents and Library directories.
##Swift 1.2 (Xcode 6.3 beta 4) version methods:

    // Delete files
    FileDelete.deleteFile(path:String, directory:NSSearchPathDirectory,  subdirectory:String?) -> Bool
    FileDelete.deleteFileFromTemporaryDirectory(path:String, subdirectory:String?) -> Bool
    
    // Delete folders
    FileDelete.deleteSubDirectory(directory:NSSearchPathDirectory, subdirectory:String) -> Bool
    FileDelete.deleteSubDirectoryFromTemporaryDirectory(subdirectory:String) -> Bool

See companion class: [FileSave](https://github.com/sketchytech/FileSave)
##Objective-C implementation (no long updated)
To use this code import the header where it is needed and use the following methods:


    [FileDelete deleteFileFromDocumentsDirectory:@"helpme" inSubDirectory:nil];
    [FileDelete deleteFileFromLibraryDirectory:@"helpme" inSubDirectory:@"help/theworld];
    
    [FileDelete deleteSubDirectoryFromDocumentsDirectory:@"helpless"];
    [FileDelete deleteSubDirectoryFromLibraryDirectory:@"Libraryofhelplessness/mine"];


