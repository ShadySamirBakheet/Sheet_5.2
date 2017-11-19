.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	p3 BYTE "Result ",0
	h BYTE "rectangle  perimeter is "
	r BYTE 11 DUP(?),0
	p BYTE  "number x ",0
	p1 BYTE  "number y ",0
	p2 BYTE  "number z ",0
	x DWORD ?
	y DWORD ?
	v DWORD ?

.CODE
_MainProc PROC 
	input p ,r,11
	atod r
	mov x,eax

	
	input p1 ,r,11
	atod r
	mov y,eax


	mov eax,0 
	mov eax,x
	add eax,x
	mov v,eax
	mov eax,0
	mov eax,y
	add eax,y
	add v,eax
	

	dtoa r,v
	output p3,h

	mov eax,0 
	ret

_MainProc ENDP

END