;-------------------------------------------------------------------------
; Performs a simple cleanup in order to get ready for the OS
;-------------------------------------------------------------------------
	.assume ADL=1
	.def _prgm_CleanUp
	
_prgm_CleanUp:
	ld	iy,%D00080
	res	4,(iy+9) ; onInterrupt,(iy+onFlags)
	call	%0020E5C ; _DelRes
	call	%0020818 ; _ClrTxtShd
	call	%0020814 ; _ClrScrn
	call	%0020828 ; _HomeUp
	set	0,(iy+3) ; graphDraw,(iy+graphFlags)
	jp	%0021A3C ; _DrawStatusBar
	
	end