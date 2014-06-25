FileDelete
==========

Simple iOS class to delete files and subdirectories from the Documents and Library directories.

To use this code import the header where it is needed and use the following methods:


    [FileDelete deleteFileFromDocumentsDirectory:@"helpme" inSubDirectory:nil];
    [FileDelete deleteFileFromLibraryDirectory:@"helpme" inSubDirectory:@"help/theworld];
    
    [FileDelete deleteSubDirectoryFromDocumentsDirectory:@"helpless"];
    [FileDelete deleteSubDirectoryFromLibraryDirectory:@"Libraryofhelplessness/mine"];

##Swift version methods:

    // Delete files
    FileDelete.deleteFileFromDocumentsDirectory("YourFile.extension",subdirectory:"YourDirectory")
    FileDelete.deleteFileFromLibraryDirectory("YourFile.extension",subdirectory:"YourDirectory")
    FileDelete.deleteFileFromApplicationSupportDirectory("YourFile.extension",subdirectory:"YourDirectory")
    FileDelete.deleteFileFromTemporaryDirectory("YourFile.extension",subdirectory:"YourDirectory")
    FileDelete.deleteFileFromCachesDirectory("YourFile.extension",subdirectory:"YourDirectory")
    
    FileDelete.deleteSubDirectoryFromDocumentsDirectory("YourDirectory")
    FileDelete.deleteSubDirectoryFromLibraryDirectory("YourDirectory")
    FileDelete.deleteSubDirectoryFromApplicationSupportDirectory("YourDirectory")
    FileDelete.deleteSubDirectoryFromTemporaryDirectory("YourDirectory")
    FileDelete.deleteSubDirectoryFromCachesDirectory("YourDirectory")

See companion class: [FileSave](https://github.com/sketchytech/FileSave)

