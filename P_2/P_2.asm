.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	p3 BYTE "Result ",0
	h BYTE "Result of   2(x+y) + z is "
	r BYTE 11 DUP(?),0
	p BYTE  "number x ",0
	p1 BYTE  "number y ",0
	p2 BYTE  "number z ",0
	x DWORD ?
	y DWORD ?
	z DWORD ?
	v DWORD ?

.CODE
_MainProc PROC 
	input p ,r,11
	atod r
	mov x,eax

	
	input p1 ,r,11
	atod r
	mov y,eax

	input p2 ,r,11
	atod r
	mov z,eax

	mov eax,0 
	mov eax,x
	add eax,y
	;mul 2
	mov v,eax
	add eax,v
	add eax,z
	mov v,eax

	dtoa r,v
	output p3,h

	mov eax,0 
	ret

_MainProc ENDP

END