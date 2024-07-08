//%attributes = {}
Form:C1466.winCol:=New collection:C1472
var $hWnd : Integer

If (bTrace)
	TRACE:C157
End if 

// Open "Contact" form 
$hWnd:=Open form window:C675("Contact"; Plain form window:K39:10+Form has no menu bar:K39:18; 100; 100)
DIALOG:C40("Contact"; *)
Form:C1466.winCol.push($hWnd)

// Open "Contact" form with "user" icon
$hWnd:=Open form window:C675("Contact"; Plain form window:K39:10+Form has no menu bar:K39:18; 100+40; 100+40)
SET WINDOW DOCUMENT ICON:C1840($hWnd; Form:C1466.userPict)
DIALOG:C40("Contact"; *)
Form:C1466.winCol.push($hWnd)

// Open "Contact" form with "user" file
$hWnd:=Open form window:C675("Contact"; Plain form window:K39:10+Form has no menu bar:K39:18; 100+80; 100+80)
SET WINDOW DOCUMENT ICON:C1840($hWnd; Form:C1466.userFile)
DIALOG:C40("Contact"; *)
Form:C1466.winCol.push($hWnd)

// Open "Contact" form with "user" icon and "user" file
$hWnd:=Open form window:C675("Contact"; Plain form window:K39:10+Form has no menu bar:K39:18; 100+120; 100+120)
SET WINDOW DOCUMENT ICON:C1840($hWnd; Form:C1466.userPict; Form:C1466.userFile)
DIALOG:C40("Contact"; *)
Form:C1466.winCol.push($hWnd)




