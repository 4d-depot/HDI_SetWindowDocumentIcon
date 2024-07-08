//%attributes = {}
// Close all dialogs Contacts and Products

For each ($win; Form:C1466.winCol)
	CALL FORM:C1391($win; Formula:C1597(CANCEL:C270))
End for each 