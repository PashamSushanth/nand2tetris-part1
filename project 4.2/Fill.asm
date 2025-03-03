(START)
    @KBD
    D=M       
    @DRAW
    D;JNE     
    @ERASE
    0;JMP     

(DRAW)
    @SCREEN
    D=A
    @addr
    M=D

(LOOP_DRAW)
    @addr
    D=M
    @SCREEN
    D=D-A
    @END
    D;JGT     

    @addr
    A=M
    M=-1      

    @addr
    M=M+1     
    @LOOP_DRAW
    0;JMP     

(ERASE)
    @SCREEN
    D=A
    @addr
    M=D      

(LOOP_ERASE)
    @addr
    D=M
    @SCREEN+8191
    D=D-A
    @END
    D;JGT     
    @addr
    A=M
    M=0       

    @addr
    M=M+1     
    @LOOP_ERASE
    0;JMP     

(END)
    @START
    0;JMP    
