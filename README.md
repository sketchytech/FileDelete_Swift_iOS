FileDelete
==========

Simple iOS class to delete files and subdirectories from the Documents and Library directories.

To use this code import the header where it is needed and use the following methods:


    [FileDelete deleteFileFromDocumentsDirectory:@"helpme" inSubDirectory:nil];
    [FileDelete deleteFileFromLibraryDirectory:@"helpme" inSubDirectory:@"help/theworld];
    
    [FileDelete deleteSubDirectoryFromDocumentsDirectory:@"helpless"];
    [FileDelete deleteSubDirectoryFromLibraryDirectory:@"Libraryofhelplessness/mine"];

See companion class: [FileSave](https://github.com/sketchytech/FileSave)
