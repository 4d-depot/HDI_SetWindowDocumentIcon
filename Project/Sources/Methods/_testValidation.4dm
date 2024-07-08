//%attributes = {}

#DECLARE($hWnd : Integer; $type : Text)

var $image; $emptyImage : Picture
READ PICTURE FILE:C678(File:C1566("/RESOURCES/icon/user.png").platformPath; $image)

var $file; $incorrectFile : 4D:C1709.File
$file:=File:C1566("/RESOURCES/files/user.txt")
$incorrectFile:=File:C1566("/RESOURCES/files/user2.txt")

Case of 
	: ($type="icon")
		SET WINDOW DOCUMENT ICON:C1840($hWnd; $image)
		
	: ($type="clear_image_file")
		SET WINDOW DOCUMENT ICON:C1840($hWnd)
		
	: ($type="emptyIcon")
		SET WINDOW DOCUMENT ICON:C1840($hWnd; $emptyImage)
		
	: ($type="file")
		SET WINDOW DOCUMENT ICON:C1840($hWnd; $file)
		
	: ($type="file_emptyIcon")
		SET WINDOW DOCUMENT ICON:C1840($hWnd; $emptyImage; $file)
		
	: ($type="file_icon")
		SET WINDOW DOCUMENT ICON:C1840($hWnd; $image; $file)
		
	: ($type="incorrectFile")
		SET WINDOW DOCUMENT ICON:C1840($hWnd; $incorrectFile)
		
	: ($type="icon_incorrectFile")
		SET WINDOW DOCUMENT ICON:C1840($hWnd; $image; $incorrectFile)
		
End case 


