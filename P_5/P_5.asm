.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	pr BYTE "Result :)",0
	p  BYTE  "enter grade of course 1 ",0
	p1 BYTE  "enter grade of course 2 ",0
	p2 BYTE  "enter grade of course 3 ",0
	p3 BYTE  "enter grade of course 4 ",0
	su DWORD ?
	t  DWORD ?
	e  BYTE 11 DUP(?),0
	m  BYTE "The average grades is "
	g  BYTE 11 DUP(?)
	   BYTE "  grade and "
	rm BYTE 11 DUP(?)
	   BYTE "  of 4 ",0

.CODE
_MainProc PROC 
	input p ,e,11
	atod e
	mov su,eax

	
	input p1 ,e,11
	atod e
	add su,eax

	input p2 ,e,11
	atod e
	add su,eax

	input p3 ,e,11
	atod e
	add su,eax
	mov eax,0
	mov eax,su
	mov ebx,4
	div ebx

	dtoa rm,edx
	dtoa g,eax
	output pr,m

	mov eax,0 
	ret

_MainProc ENDP

END