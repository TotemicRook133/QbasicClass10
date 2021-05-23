$EXEICON:'aditlogo.ico'
_ICON
_TITLE "ACDC Bank made by ADIT LLC"
myScreen& = _NEWIMAGE(1359, 700, 32)
SCREEN myScreen&
_FULLSCREEN

CLS
PRINT "Welcome to my program"
PRINT "Press any key to start"
WHILE a$ = ""
    a$ = INKEY$
WEND

start:
CLS
myScreen& = _NEWIMAGE(1359, 700, 32)
SCREEN myScreen&
_FULLSCREEN

FOR i = 10 TO 34
    LOCATE i, 40: PRINT "$"
NEXT i
FOR i = 41 TO 129
    LOCATE 11, i: PRINT CHR$(195)
NEXT i
FOR i = 41 TO 129
    LOCATE 34, i: PRINT CHR$(195)
NEXT i
FOR i = 10 TO 34
    LOCATE i, 130: PRINT "$"
NEXT i
FOR i = 42 TO 128
    LOCATE 15, i: PRINT CHR$(195)
NEXT i
LOCATE 10, 76: PRINT "ACDC Bank"
LOCATE 13, 75: INPUT "Enter your username"; a$
IF a$ = "computer" THEN
    FOR i = 42 TO 128
        LOCATE 19, i: PRINT CHR$(195)
    NEXT i
    LOCATE 17, 75: PRINT "Please enter your password:";
    strPassword$ = "test"
    ctr = 0

    DO UNTIL strKey$ = CHR$(13)
        strKey$ = INKEY$
        C = 0
        FOR i = 48 TO 122
            IF strKey$ = CHR$(i) THEN C = C + 1: ctr = ctr + 1
        NEXT i
        IF C = 1 THEN
            b$ = b$ + strKey$
            c$ = c$ + "*"
            IF ctr > 1 THEN c$ = RIGHT$(c$, 1)
            PRINT c$;

        ELSE
            IF strKey$ = CHR$(8) THEN
                IF strPassword$ <> "" THEN
                    b$ = LEFT$(b$, LEN(b$) - 1)
                    c$ = LEFT$(c$, (LEN(c$) - 1))
                    LOCATE CSRLIN, POS(0) - 1, 1
                    PRINT " ";
                    LOCATE CSRLIN, POS(0) - 1, 1
                END IF
            END IF
        END IF

    LOOP
    IF b$ = "test" THEN GOTO sat ELSE SLEEP 1: LOCATE 40, 72: PRINT "**** wrong passcode *****": LOCATE 41, 72: INPUT "do you want to try again Y/N"; a$: IF UCASE$(a$) = "Y" THEN RUN start ELSE END

ELSE
    LOCATE 40, 72: PRINT "wrong username": LOCATE 41, 72: INPUT "do you want to try again Y/N"; a$: IF UCASE$(a$) = "Y" THEN GOTO start ELSE END
END IF
sat:
CLS

CALL soun
CALL frame
CALL eng
CALL qr
CALL load
CALL prof
mainmenu:
CLS
FOR i = 3 TO 39
    LOCATE i, 3: PRINT CHR$(179)
NEXT i
FOR i = 3 TO 39
    LOCATE i, 3: PRINT CHR$(179)
NEXT i

FOR i = 3 TO 169
    LOCATE 3, i: PRINT CHR$(196)
NEXT i
FOR i = 3 TO 169
    LOCATE 35, i: PRINT CHR$(176)
NEXT i
FOR i = 3 TO 169
    LOCATE 36, i: PRINT CHR$(196)
NEXT i
FOR i = 3 TO 39
    LOCATE i, 168: PRINT CHR$(179)
NEXT i
h$ = "LCALLIG.ttf" 'Find Windows Folder Path.
s$ = "MONOSPACE"
PRINT
e% = 20
PRINT
c% = 1
PRINT
d% = 1

IF c% = 1 THEN s$ = s$ + ", ITALIC"
IF d% = 1 THEN s$ = s$ + ", BOLD"
t& = _LOADFONT(h$, e%, s$)
_FONT t&
LOCATE 5, 20: PRINT "Welcome to ACDC bank";
LOCATE 6, 20: PRINT "How can we help you"
LOCATE 7, 20: PRINT
LOCATE 8, 20: PRINT
LOCATE 9, 3: PRINT "1) Checking Balance"
LOCATE 10, 3: PRINT "2) Add more bank accounts"
LOCATE 11, 3: PRINT "3) Deleting bank accounts"
LOCATE 12, 3: PRINT "4) Withdrawing"
LOCATE 13, 3: PRINT "5) Displaying all the records"
LOCATE
GOSUB ClearFont
ClearFont:
IF font& > 0 THEN
    _FONT 16 'select inbuilt 8x16 default font
    _FREEFONT font&
END IF
END
SUB qr
    img = _LOADIMAGE("qr.png")
    _PUTIMAGE (540, 300), img
END SUB
SUB soun
    s& = _SNDOPEN("Billie Eilish, Khalid - lovely.mp3")
    PRINT s&
    _SNDPLAY s&
    _SNDLOOP s&

END SUB
SUB frame
    FOR i = 3 TO 39
        LOCATE i, 3: PRINT CHR$(179)
    NEXT i
    FOR i = 3 TO 39
        LOCATE i, 3: PRINT CHR$(179)
    NEXT i

    FOR i = 3 TO 169
        LOCATE 3, i: PRINT CHR$(196)
    NEXT i
    FOR i = 3 TO 169
        LOCATE 35, i: PRINT CHR$(176)
    NEXT i
    FOR i = 3 TO 80
        LOCATE 36, i: PRINT CHR$(196)
    NEXT i
    LOCATE 36, 81: PRINT "Loading..."
    FOR i = 93 TO 169
        LOCATE 36, i: PRINT CHR$(196)
    NEXT i
    LOCATE 37, 81: PRINT "Made by Adit"
    LOCATE 38, 81: PRINT "Advisor :MA sir"
    FOR i = 3 TO 39
        LOCATE i, 168: PRINT CHR$(179)
    NEXT i
    SLEEP 1
END SUB
SUB load
    FOR i = 3 TO 169
        LOCATE 34, i: PRINT CHR$(219)
        FOR k = 1 TO 9999999
        NEXT k
    NEXT i

END SUB
SUB prof
    CLS
    PRINT
    PRINT


    PRINT "                                          ,(#%&&@@@@@@@&%(,"
    PRINT "                                       ,(&@@@@@@@@@@@@@@@@&&%/"
    PRINT "                                    .(@@@@@@@@@@@@@@@@@@@@@@@&@@#,"
    PRINT "                                  ,%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%*."
    PRINT "                                  /&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#."
    PRINT "                                  *&@@@@@@@@@@@@@@@@&&&%%%&&@@@@@@@@&,"
    PRINT "                                  *%@@@@@@@&%(/**,,,,,,****/(#%@@@@@&/"
    PRINT "                                  .#@@@@@%(/**,,......,,,,,**/(#%&@@@("
    PRINT "                                  .(@@@@%(/**,,...........,,,**/(#&@@#."
    PRINT "                                   /&&&#/**,,,,............,,,***/(#&("
    PRINT "                                   *%&#/,*/*/////*,... ...,/(#%%#((/(%/"
    PRINT "                                   .(%#//(//***//**,...,*/((////(///#*"
    PRINT "                                  .,*%#///(#(#&#/***,.,*///#&#(%#(//(///,"
    PRINT "                                  ,**///******,,,,,,,,,*/***********//**,"
    PRINT "                                  .,*///**,,,,....,,,,,***,,,,,,****/*/*"
    PRINT "                                  .****/**,,......,,,..,**,...,,**//(//,"
    PRINT "                                   ,***//*,,......,,,,****,,..,,*////*,"
    PRINT "                                        ,**,,,.,,,,,,,,,***/*****/,"
    PRINT "                                        .,***,**////****//(///*//*."
    PRINT "                                          ,*****,,************//*."
    PRINT "                                          ,///**,,,,...,,,***//(#&#."
    PRINT "                                       .(%(/**///*,,,,,,,**/////(%@@("
    PRINT "                                     ,#&&(**********///((/((////**&@&%/"
    PRINT "                                  .*%@@@@#,.,,,,,**,,,,**/(///*,,*#@@&&&(,"
    PRINT "                            .,/#&@@@@@@@@&(.....,,,,,,,,**/*,....,(@@@@&&&&&&%(*."
    PRINT "                        ./&@@@@@@@@@@@@@@@%*.......,,,,***,......,/&@@@@@@&&&&@@&@@&#/."
    PRINT "                   .,(%@@@@@@@@@@@@@@@@@@@&(,.......,****........,(@@&@@@@@@@@@@@@@@@@@&&#/,."
    PRINT "                *%@@@@@@@@@@@@@@@@@@@@@@@&&%/.......*#&%%%(,.....*%@&@@@@@@@@@@@@@@@@@@@@@@&&&%/,"
    PRINT "           ./%@@@@@@@@@@@@@@@@@@@@@@@@@&&&&&#*..../%%#%&&@&%#*,,,/&&@@&&@@@@@@@@@@@@@@@@@@@@@@@@&/"
    PRINT "           (&@@@@@@@@@@@@@@@@@@&@@&&&&&&&&&&&(*,,,,,,(&&&%(*,./(*#&&&&&&&&&&&@@@@@@&&&&&&&&&&&@&&#"
    PRINT "           (&&@@@&&&&&&&&&&&&&@&&&&&&&&&&&&&&%#/,..,*#&&&@%*.,,,,/&&&&&&&&&&&&@@@&&&&&&&&&&&&&&&&&*"
    PRINT "           #&&&&&&&&&&&&&&&&&&&@&&&&&&&&&&&&&&%(*,../&&&&@@%*,,,,#&&&&&&&&&&&&@@&&&&&&&&&&&&&@&&&&%."
    PRINT "          *&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&#/,.*###&&&&%(,,*/%&&&&&&&&&&&@@@&&&&&&&&&&&@@&&&&&&*"
    PRINT "          #&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%(*,*(%&&%%&&#***#&&&&&&&&&&&@@@@@&&&&&&&&&@@@&&&&&&#."
    PRINT "         *&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&#/*/%&%%%&%%#*//%&&&&&&&&&&@@@@@&&&&&&&&&&@@&&&&@@&&/"
    PRINT "         (&&&&&&@@&@@&&&&&&&&&&&&&&&@&&&&&&&&&&&&(*/%%%&%(#@%//#&&&&&&&&&&@@@@@&&&&&&&&&&@@&&&&@@@@@%."
    PRINT "        .%&&&&&&&@@@@@&&&&&&&&&&&&&&@@&&&&&&&&&&&#*/%&&&&&&@%##%&&&&&&&&&@@@@@&&&&&&&&&@@@@@&&&@@@@&&*"
    PRINT "        ,&@&&&&&&&&@@@@&&&&&&&&&&&&&&@@&&&&&&&&&@&#%&%#%&&&&@&%&&&&&&&&&@@@@@@&&&&&&&&@@@@@&&&@@@@&&&("














    a$ = "Welcome to my program. My name is 4133/K/Adit  and I am the creator of this software. Hoped you liked it"
    b$ = "for more inquiries: my business profile: lohaniadit4133@gmail.com"
    SLEEP 2
    FOR i = 1 TO LEN(a$)
        c$ = MID$(a$, i, 1)
        PRINT c$;
        FOR j = 1 TO 12345670
        NEXT j
    NEXT i
    PRINT
    FOR i = 1 TO LEN(b$)
        d$ = MID$(b$, i, 1)
        PRINT d$;
        FOR j = 1 TO 12345670
        NEXT j
    NEXT i

END SUB
SUB eng
    fontpath$ = "POORICH.ttf" 'Find Windows Folder Path.
    style$ = "MONOSPACE"
    PRINT
    fontsize% = 45
    PRINT
    italic% = 1
    PRINT
    bold% = 1
    IF italic% = 1 THEN style$ = style$ + ", ITALIC"
    IF bold% = 1 THEN style$ = style$ + ", BOLD"
    font& = _LOADFONT(fontpath$, fontsize%, style$)
    _FONT font&
    LOCATE 4, 12: PRINT "ACDC BANK"
    SLEEP 2
    h$ = "preeti_0.ttf" 'Find Windows Folder Path.
    s$ = "MONOSPACE"
    PRINT
    e% = 50
    PRINT
    c% = 1
    PRINT
    d% = 1

    IF c% = 1 THEN s$ = s$ + ", ITALIC"
    IF d% = 1 THEN s$ = s$ + ", BOLD"
    t& = _LOADFONT(h$, e%, s$)
    _FONT t&
    LOCATE 5, 40: PRINT ";lx ^";
    SLEEP 6
    GOSUB ClearFont
    ClearFont:
    IF font& > 0 THEN
        _FONT 16 'select inbuilt 8x16 default font
        _FREEFONT font&
    END IF
    FOR i = 1 TO 20
        PRINT
    NEXT i
END SUB



