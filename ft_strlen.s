segment .text
	global _ft_strlen

; ft_strlen(arg0 = rdi = char *s)
_ft_strlen:
	mov 	rax, 0	; Move 0 to rax (return value also the count) 
	jmp 	count	; jump to count function

count:
	cmp 	BYTE [rdi + rax], 0 	; if the byte at rdi(arg0 = string) start + rax (count/return value) equal 0
	je 		exit					; so exit and return rax
	inc	 	rax						; increment rax ( = rax++ )
	jmp 	count					; jump to count and redo the test with rax + 1

exit:
	ret			; return (rax)