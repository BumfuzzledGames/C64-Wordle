1 REM WORDLE FOR COMMODORE 64
2 REM BY BUMFUZZLED GAMES
10 REM**********
11 REM VARIABLES
12 REM**********
20 SP$="MHN{sh asterisk}":SP=1:NW=472
30 CO$="{white}":PRINT CO$
40 DIM SE$(5),GU$(5),MA(5),OU$(5)
50 DE=20
100 REM*********************
101 REM CHOOSE A RANDOM WORD
102 REM*********************
110 PRINT "choosing a random word  ";
120 WI=INT(RND(0)*NW)
130 FOR I=1 TO WI:READ W$
140 PRINT "{left}"+MID$(SP$,SP,1);
150 SP=SP+1:IF SP>4 THEN SP=1
160 NEXT I
170 READ T$
172 PRINT "{left}"+MID$(SP$,SP,1);
173 SP=SP+1:IF SP>4 THEN SP=1
176 IF T$<>"" THEN 170
180 PRINT"{delete}"
200 REM*****************
201 REM INITIALIZE LISTS
202 REM*****************
210 FOR I=1 TO 5
220 SE$(I)=MID$(W$,I,1)
230 GU$(I)=""
240 MA(I)=0
250 NEXT I
300 REM***************
301 REM GET USER INPUT
302 REM***************
310 PRINT CO$;"enter your guess: ";
320 FOR I=1 TO 5
330 GET GU$(I):IF GU$(I)="" THEN 330
340 C=ASC(GU$(I))
350 IFC=20ANDI>1THEN?"{delete}";:I=I-2:GOTO380
360 IF C=20 THEN I=I-1:GOTO 380
365 IF C<ASC("a")ORC>ASC("z") THEN 330
370 PRINT GU$(I);
380 NEXT I
400 REM******************
401 REM INITIALIZE OUTPUT
402 REM******************
410 M=0
420 FOR I=1 TO 5
430 OU$(I)=""
440 MA(I)=0
450 NEXT I
500 REM*******************
501 REM FIND EXACT MATCHES
502 REM*******************
510 FOR I=1 TO 5
520 IF SE$(I)<>GU$(I) THEN 560
530 OU$(I)="{green}"+SE$(I)
540 MA(I)=1
550 M=M+1
560 NEXT I
600 REM*********************
601 REM FIND INEXACT MATCHES
602 REM*********************
610 FOR G=1 TO 5
620 IF OU$(G)<>"" THEN 695
630 FOR S=1 TO 5
640 IF MA(S)=1 THEN 690
650 IF SE$(S)<>GU$(G) THEN 690
660 OU$(G) = CO$+SE$(S)
670 MA(S)=1
680 GOTO 695
690 NEXT S
695 NEXT G
700 REM*************
701 REM PRINT OUTPUT
702 REM*************
710 FOR I=1 TO 5
720 PRINT "{delete}";
730 FOR W=1 TO DE:NEXT W
740 NEXT I
750 FOR I=1 TO 5
760 IF OU$(I)<>"" THEN PRINT OU$(I);
770 IF OU$(I)="" THEN PRINT"{dark gray}"+GU$(I);
780 FOR W=1 TO DE:NEXT W
790 NEXT I
795 PRINT
800 IF M<>5 THEN 310
1000 PRINT CO$
1010 END
50000 DATAAPPLY,AWFUL,ABOVE,APPLE,AWARD
50001 DATAANGRY,ALBUM,AVOID,AHEAD,ALLOW
50002 DATAALIVE,AWARE,AFTER,ADOPT,ADMIT
50003 DATAADAPT,AMONG,APART,ABUSE,ACTOR
50004 DATAABOUT,ALONG,AGAIN,ASIDE,ARGUE
50005 DATAAGENT,AGREE,ANGLE,ANGER,ARISE
50006 DATAASSET,ALONE,ALTER
50007 DATABLOCK,BUNCH,BENCH,BEACH,BREAK
50008 DATABADLY,BROWN,BRUSH,BUYER,BRIEF
50009 DATABELOW,BIRTH,BLAME,BASIC,BIBLE
50010 DATABRING,BROAD,BEGIN,BUILD,BEING
50011 DATABLADE,BREAD,BRAND,BOARD,BLIND
50012 DATABLOOD,BRAIN,BASIS
50013 DATACRAZY,CHECK,CHEEK,CLOCK,CHIEF
50014 DATACRACK,COACH,COUCH,CHEAP,CYCLE
50015 DATACATCH,CHILD,CROWD,CLIMB,CHAIN
50016 DATACOVER,CRASH,CRAFT,CIVIL,CHART
50017 DATACHASE,CHAIR,CHEST,CARRY,CLAIM
50018 DATACREAM,CRIME,CABLE,CABIN,CLOUD
50019 DATACOULD,CAUSE,CROSS,CLEAR,COUNT
50020 DATACOLOR,COAST,CLOSE,CLASS,CLEAN
50021 DATACOURT
50022 DATADOZEN,DEPTH,DRINK,DRAFT,DAILY
50023 DATADIRTY,DELAY,DEATH,DRIVE,DOUBT
50024 DATADRAMA,DREAM,DANCE,DRESS
50025 DATAENJOY,EQUAL,EXACT,EXTRA,EXIST
50026 DATAEMPTY,EVERY,ENEMY,EIGHT,ENTRY
50027 DATAEARTH,EARLY,ESSAY,EVENT,ELECT
50028 DATAEAGER,ERROR,ELITE,ENTER
50029 DATAFIFTY,FIGHT,FAITH,FULLY,FRESH
50030 DATAFORTH,FLESH,FUNNY,FEWER,FAVOR
50031 DATAFRAME,FORCE,FOCUS,FENCE,FIBER
50032 DATAFLAME,FIELD,FOUND,FINAL,FIRST
50033 DATAFLOOR,FAULT,FRONT,FRUIT,FALSE
50034 DATAFLOAT
50035 DATAGHOST,GIVEN,GLOVE,GRAVE,GROUP
50036 DATAGUARD,GUIDE,GRAND,GRADE,GRANT
50037 DATAGUEST,GUESS,GIANT,GLASS,GREEN
50038 DATAGREAT,GRAIN,GRASS
50039 DATAHAPPY,HEAVY,HONEY,HABIT,HUMAN
50040 DATAHUMOR,HELLO,HORSE,HOTEL,HOUSE
50041 DATAHEART,HONOR
50042 DATAINDEX,IMPLY,IMAGE,IDEAL,INNER
50043 DATAISSUE
50044 DATAJUDGE,JUICE,JONT
50045 DATAKNOCK,KNIFE
50046 DATALUCKY,LUNCH,LIGHT,LAUGH,LEAVE
50047 DATALAYER,LOVER,LOWER,LEVEL,LOCAL
50048 DATALIMIT,LEMON,LABOR,LABEL,LEGAL
50049 DATALARGE,LEAST,LEARN,LOOSE,LATER
50050 DATAMAJOR,MATCH,MAYME,MAKER,MIGHT
50051 DATAMONTH,MOUTH,MOVIE,MAYOR,MARRY
50052 DATAMONEY,MUSIC,MODEL,MEDIA,METAL
50053 DATAMOUSE,MOUNT,MOTOR,MORAL,METER
50054 DATAMINOR
50055 DATANEWLY,NAKED,NIGHT,NERVE,NEVER
50056 DATANORTH,NOVEL,NOISE,NURSE
50057 DATAOFFER,OCCUR,OUGHT,OFTEN,OTHER
50058 DATAOWNER,OCEAN,ORDER,ONION
50059 DATAPORCH,PITCH,PATCH,PROVE,POWER
50060 DATAPHOTO,PHONE,PHASE,PROOF,PARTY
50061 DATAPEACE,PRICE,PRIME,PLACE,PAPER
50062 DATAPIECE,PRIDE,PROUD,POUND,PRINT
50063 DATAPRIOR,PRESS,POINT,PLATE,PLANT
50064 DATAPLANE,PILOT,PIANO,PAUSE,PANEL
50065 DATAPAINT
50066 DATAQUICK,QUIET,QUITE,QUOTE
50067 DATARELAX,REPLY,REACH,ROUGH,READY
50068 DATARIGHT,RAPID,RIVER,REFER,REACT
50069 DATAROUND,RADIO,RANGE,RATIO,RAISE
50070 DATAROUTE,RURAL
50071 DATASHOCK,SEIZE,SHAKE,STICK,STOCK
50072 DATASTUFF,SHELF,STAFF,SPEAK,SMOKE
50073 DATASHIFT,SHARP,SHAPE,SWEEP,SHADE
50074 DATASIGHT,SHRIG,SPACE,SCOPE,SKILL
50075 DATASTAKE,STUDY,SWING,SWEET,STORY
50076 DATASPEND,SOLVE,SORRY,SOUTH,SWEAR
50077 DATASPEED,STYLE,SLAVE,SHORT,SHEET
50078 DATASHARE,SHINE,SHIRT,SHOOT,SHALL
50079 DATASHORE,SEVEN,SHELL,SERVE,SHOUT
50080 DATASAUCE,SPLIT,SCALE,SUPER,SCENE
50081 DATASCORE,STRIP,STORN,SPORT,SMELL
50082 DATASLEEP,SMART,SMALL,SLICE,SMILE
50083 DATASINCE,STAND,SUGAR,SOUND,SLIDE
50084 DATASTAGE,SOLID,SALAD,SALES,SENSE
50085 DATASOLAR,STAIR,STARE,STATE,STEAL
50086 DATASTEEL,STILL,STONE,STORE,START
50087 DATATHICK,THINK,THANK,TRACK,THROW
50088 DATATRICK,TRUCK,THEME,TOUCH,TEACH
50089 DATATWICE,TOUGH,TIGHT,TODAY,THIRD
50090 DATATHING,TOPIC,TOWER,TRULY,TRUTH
50091 DATATHEIR,TOOTH,THERE,THREE,THESE
50092 DATATHOSE,TERMS,TROOP,TRIBE,TABLE
50093 DATATRACE,TIRED,TREND,TRADE,TASTE
50094 DATATRUST,TOTAL,TITLE,TRAIN,TRIAL
50095 DATATRAIL,TREAT
50096 DATAUPPER,UNCLE,URBAN,UNDER,UNION
50097 DATAUNTIL,USUAL
50098 DATAVOICE,VIDEO,VALUE,VIRUS,VISIT
50099 DATAVITAL,VOTER
50100 DATAWHICH,WATCH,WEIGH,WORKS,WHOSE
50101 DATAWORTH,WHOLE,WHITE,WHILE,WHERE
50102 DATAWHEEL,WORRY,WOMAN,WOULD,WOUND
50103 DATAWORLD,WRONG,WATER,WRITE,WASTE
50104 DATAYOUTH,YIELD,YOUNG,YOURS
60000 DATA ""
