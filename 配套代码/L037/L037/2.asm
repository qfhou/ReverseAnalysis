; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG5099	DB	'Hello World!', 0aH, 00H
	ORG $+2
$SG5100	DB	'a[%d]=%d', 0aH, 00H
CONST	ENDS
PUBLIC	__local_stdio_printf_options
PUBLIC	_vfprintf_l
PUBLIC	printf
PUBLIC	main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
EXTRN	__acrt_iob_func:PROC
EXTRN	__stdio_common_vfprintf:PROC
EXTRN	__GSHandlerCheck:PROC
EXTRN	__security_check_cookie:PROC
EXTRN	__security_cookie:QWORD
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vfprintf_l DD imagerel $LN3
	DD	imagerel $LN3+67
	DD	imagerel $unwind$_vfprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$printf DD imagerel $LN3
	DD	imagerel $LN3+87
	DD	imagerel $unwind$printf
pdata	ENDS
pdata	SEGMENT
$pdata$main DD	imagerel $LN9
	DD	imagerel $LN9+162
	DD	imagerel $unwind$main
pdata	ENDS
xdata	SEGMENT
$unwind$main DD	021919H
	DD	0130107H
	DD	imagerel __GSHandlerCheck
	DD	080H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$printf DD 011801H
	DD	06218H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfprintf_l DD 011801H
	DD	06218H
xdata	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
i$ = 32
a$ = 48
__$ArrayPad$ = 128
main	PROC
; File C:\Users\libit\source\repos\L037\L037\L037.cpp
; Line 7
$LN9:
	sub	rsp, 152				; 00000098H
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax
; Line 8
	lea	rcx, OFFSET FLAT:$SG5099
	call	printf
; Line 13
	mov	DWORD PTR i$[rsp], 0
	jmp	SHORT $LN4@main
$LN2@main:
	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
$LN4@main:
	cmp	DWORD PTR i$[rsp], 20
	jge	SHORT $LN3@main
; Line 15
	mov	eax, DWORD PTR i$[rsp]
	shl	eax, 1
	movsxd	rcx, DWORD PTR i$[rsp]
	mov	DWORD PTR a$[rsp+rcx*4], eax
; Line 16
	jmp	SHORT $LN2@main
$LN3@main:
; Line 18
	mov	DWORD PTR i$[rsp], 0
	jmp	SHORT $LN7@main
$LN5@main:
	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
$LN7@main:
	cmp	DWORD PTR i$[rsp], 20
	jge	SHORT $LN6@main
; Line 20
	movsxd	rax, DWORD PTR i$[rsp]
	mov	r8d, DWORD PTR a$[rsp+rax*4]
	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG5100
	call	printf
; Line 21
	jmp	SHORT $LN5@main
$LN6@main:
; Line 22
	xor	eax, eax
	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	add	rsp, 152				; 00000098H
	ret	0
main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT printf
_TEXT	SEGMENT
_Result$ = 32
_ArgList$ = 40
_Format$ = 64
printf	PROC						; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 954
$LN3:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 56					; 00000038H
; Line 957
	lea	rax, QWORD PTR _Format$[rsp+8]
	mov	QWORD PTR _ArgList$[rsp], rax
; Line 958
	mov	ecx, 1
	call	__acrt_iob_func
	mov	r9, QWORD PTR _ArgList$[rsp]
	xor	r8d, r8d
	mov	rdx, QWORD PTR _Format$[rsp]
	mov	rcx, rax
	call	_vfprintf_l
	mov	DWORD PTR _Result$[rsp], eax
; Line 959
	mov	QWORD PTR _ArgList$[rsp], 0
; Line 960
	mov	eax, DWORD PTR _Result$[rsp]
; Line 961
	add	rsp, 56					; 00000038H
	ret	0
printf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT _vfprintf_l
_TEXT	SEGMENT
_Stream$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vfprintf_l PROC					; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 642
$LN3:
	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H
; Line 643
	call	__local_stdio_printf_options
	mov	rcx, QWORD PTR _ArgList$[rsp]
	mov	QWORD PTR [rsp+32], rcx
	mov	r9, QWORD PTR _Locale$[rsp]
	mov	r8, QWORD PTR _Format$[rsp]
	mov	rdx, QWORD PTR _Stream$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	__stdio_common_vfprintf
; Line 644
	add	rsp, 56					; 00000038H
	ret	0
_vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT __local_stdio_printf_options
_TEXT	SEGMENT
__local_stdio_printf_options PROC			; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\corecrt_stdio_config.h
; Line 88
	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
; Line 89
	ret	0
__local_stdio_printf_options ENDP
_TEXT	ENDS
END
