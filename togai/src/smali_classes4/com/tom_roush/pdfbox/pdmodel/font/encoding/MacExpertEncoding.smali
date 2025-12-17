.class public Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;
.super Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
.source "MacExpertEncoding.java"


# static fields
.field public static final INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;

.field private static final MAC_EXPERT_ENCODING_TABLE:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0xa5

    new-array v1, v0, [[Ljava/lang/Object;

    const/16 v2, 0xbe

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AEsmall"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x87

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Aacutesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/16 v3, 0x89

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Acircumflexsmall"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/16 v4, 0x27

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Acutesmall"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v1, v6

    const/16 v5, 0x8a

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Adieresissmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v1, v7

    const/16 v6, 0x88

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Agravesmall"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v1, v8

    const/16 v7, 0x8c

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Aringsmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v1, v9

    const/16 v8, 0x61

    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Asmall"

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v1, v10

    const/16 v9, 0x8b

    .line 39
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Atildesmall"

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v1, v11

    const/16 v10, 0xf3

    .line 40
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Brevesmall"

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v1, v11

    const/16 v10, 0x62

    .line 41
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "Bsmall"

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0xa

    aput-object v11, v1, v12

    const/16 v11, 0xae

    .line 42
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "Caronsmall"

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0xb

    aput-object v11, v1, v12

    const/16 v11, 0x8d

    .line 43
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "Ccedillasmall"

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v1, v13

    const/16 v12, 0xc9

    .line 44
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "Cedillasmall"

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v1, v13

    const/16 v12, 0x5e

    .line 45
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Circumflexsmall"

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0xe

    aput-object v13, v1, v14

    const/16 v13, 0x63

    .line 46
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Csmall"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v1, v15

    const/16 v14, 0xac

    .line 47
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Dieresissmall"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v1, v15

    const/16 v14, 0xfa

    .line 48
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Dotaccentsmall"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v1, v15

    const/16 v14, 0x64

    .line 49
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v11, "Dsmall"

    filled-new-array {v15, v11}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v15, 0x12

    aput-object v11, v1, v15

    const/16 v11, 0x8e

    .line 50
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v11, "Eacutesmall"

    filled-new-array {v15, v11}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v15, 0x13

    aput-object v11, v1, v15

    const/16 v11, 0x90

    .line 51
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v11, "Ecircumflexsmall"

    filled-new-array {v15, v11}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v15, 0x14

    aput-object v11, v1, v15

    const/16 v11, 0x91

    .line 52
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v11, "Edieresissmall"

    filled-new-array {v15, v11}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v15, 0x15

    aput-object v11, v1, v15

    const/16 v11, 0x8f

    .line 53
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v11, "Egravesmall"

    filled-new-array {v15, v11}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v15, 0x16

    aput-object v11, v1, v15

    const/16 v11, 0x65

    .line 54
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v7, "Esmall"

    filled-new-array {v15, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v15, 0x17

    aput-object v7, v1, v15

    const/16 v7, 0x44

    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v9, "Ethsmall"

    filled-new-array {v15, v9}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v15, 0x18

    aput-object v9, v1, v15

    const/16 v9, 0x66

    .line 56
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v5, "Fsmall"

    filled-new-array {v15, v5}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v15, 0x19

    aput-object v5, v1, v15

    const/16 v5, 0x60

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v3, "Gravesmall"

    filled-new-array {v15, v3}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x1a

    aput-object v3, v1, v15

    const/16 v3, 0x67

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Gsmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x1b

    aput-object v3, v1, v15

    const/16 v3, 0x68

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Hsmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x1c

    aput-object v3, v1, v15

    const/16 v3, 0x22

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Hungarumlautsmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x1d

    aput-object v3, v1, v15

    const/16 v3, 0x92

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Iacutesmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x1e

    aput-object v3, v1, v15

    const/16 v3, 0x94

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Icircumflexsmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x1f

    aput-object v3, v1, v15

    const/16 v3, 0x95

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Idieresissmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x20

    aput-object v3, v1, v15

    const/16 v3, 0x93

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Igravesmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x21

    aput-object v3, v1, v15

    const/16 v3, 0x69

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Ismall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x22

    aput-object v3, v1, v15

    const/16 v3, 0x6a

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Jsmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x23

    aput-object v3, v1, v15

    const/16 v3, 0x6b

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Ksmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x24

    aput-object v3, v1, v15

    const/16 v3, 0xc2

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Lslashsmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x25

    aput-object v3, v1, v15

    const/16 v3, 0x6c

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Lsmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x26

    aput-object v3, v1, v15

    const/16 v3, 0xf4

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v15, "Macronsmall"

    filled-new-array {v3, v15}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v4

    const/16 v3, 0x6d

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Msmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x28

    aput-object v3, v1, v4

    const/16 v3, 0x6e

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Nsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x29

    aput-object v3, v1, v4

    const/16 v3, 0x96

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ntildesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2a

    aput-object v3, v1, v4

    const/16 v3, 0xcf

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OEsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2b

    aput-object v3, v1, v4

    const/16 v3, 0x97

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Oacutesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2c

    aput-object v3, v1, v4

    const/16 v3, 0x99

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ocircumflexsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2d

    aput-object v3, v1, v4

    const/16 v3, 0x9a

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Odieresissmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2e

    aput-object v3, v1, v4

    const/16 v3, 0xf2

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ogoneksmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2f

    aput-object v3, v1, v4

    const/16 v3, 0x98

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ogravesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x30

    aput-object v3, v1, v4

    const/16 v3, 0xbf

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Oslashsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x31

    aput-object v3, v1, v4

    const/16 v3, 0x6f

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Osmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x32

    aput-object v3, v1, v4

    const/16 v3, 0x9b

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Otildesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x33

    aput-object v3, v1, v4

    const/16 v3, 0x70

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Psmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x34

    aput-object v3, v1, v4

    const/16 v3, 0x71

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Qsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x35

    aput-object v3, v1, v4

    const/16 v3, 0xfb

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ringsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x36

    aput-object v3, v1, v4

    const/16 v3, 0x72

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Rsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x37

    aput-object v3, v1, v4

    const/16 v3, 0xa7

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Scaronsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x38

    aput-object v3, v1, v4

    const/16 v3, 0x73

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ssmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x39

    aput-object v3, v1, v4

    const/16 v3, 0xb9

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Thornsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3a

    aput-object v3, v1, v4

    const/16 v3, 0x7e

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Tildesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3b

    aput-object v3, v1, v4

    const/16 v3, 0x74

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Tsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3c

    aput-object v3, v1, v4

    const/16 v3, 0x9c

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Uacutesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3d

    aput-object v3, v1, v4

    const/16 v3, 0x9e

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ucircumflexsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3e

    aput-object v3, v1, v4

    const/16 v3, 0x9f

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Udieresissmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3f

    aput-object v3, v1, v4

    const/16 v3, 0x9d

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ugravesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x40

    aput-object v3, v1, v4

    const/16 v3, 0x75

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Usmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x41

    aput-object v3, v1, v4

    const/16 v3, 0x76

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Vsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x42

    aput-object v3, v1, v4

    const/16 v3, 0x77

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Wsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x43

    aput-object v3, v1, v4

    const/16 v3, 0x78

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Xsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v7

    const/16 v3, 0xb4

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Yacutesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x45

    aput-object v3, v1, v4

    const/16 v3, 0xd8

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ydieresissmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x46

    aput-object v3, v1, v4

    const/16 v3, 0x79

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ysmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x47

    aput-object v3, v1, v4

    const/16 v3, 0xbd

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Zcaronsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x48

    aput-object v3, v1, v4

    const/16 v3, 0x7a

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Zsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x49

    aput-object v3, v1, v4

    const/16 v3, 0x26

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ampersandsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4a

    aput-object v3, v1, v4

    const/16 v3, 0x81

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "asuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4b

    aput-object v3, v1, v4

    const/16 v3, 0xf5

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4c

    aput-object v3, v1, v4

    const/16 v3, 0xa9

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "centinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4d

    aput-object v3, v1, v4

    const/16 v3, 0x23

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "centoldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4e

    aput-object v3, v1, v4

    const/16 v3, 0x82

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "centsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4f

    aput-object v3, v1, v4

    const/16 v3, 0x3a

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "colon"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x50

    aput-object v3, v1, v4

    const/16 v3, 0x7b

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "colonmonetary"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x51

    aput-object v3, v1, v4

    const/16 v3, 0x2c

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "comma"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x52

    aput-object v3, v1, v4

    const/16 v3, 0xb2

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "commainferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x53

    aput-object v3, v1, v4

    const/16 v3, 0xf8

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "commasuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x54

    aput-object v3, v1, v4

    const/16 v3, 0xb6

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dollarinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x55

    aput-object v3, v1, v4

    const/16 v3, 0x24

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dollaroldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x56

    aput-object v3, v1, v4

    const/16 v3, 0x25

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dollarsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x57

    aput-object v3, v1, v4

    const/16 v3, 0xeb

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x58

    aput-object v3, v1, v4

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "eightinferior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x59

    aput-object v0, v1, v3

    const/16 v0, 0x38

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "eightoldstyle"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x5a

    aput-object v0, v1, v3

    const/16 v0, 0xa1

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "eightsuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x5b

    aput-object v0, v1, v3

    const/16 v0, 0xe4

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "esuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x5c

    aput-object v0, v1, v3

    const/16 v0, 0xd6

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "exclamdownsmall"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x5d

    aput-object v0, v1, v3

    const/16 v0, 0x21

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "exclamsmall"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v12

    const/16 v0, 0x56

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "ff"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x5f

    aput-object v0, v1, v3

    const/16 v0, 0x59

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "ffi"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v5

    const/16 v0, 0x5a

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "ffl"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v8

    const/16 v0, 0x57

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "fi"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v10

    const/16 v0, 0xd0

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "figuredash"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v13

    const/16 v0, 0x4c

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "fiveeighths"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v14

    const/16 v0, 0xb0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "fiveinferior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v11

    const/16 v0, 0x35

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "fiveoldstyle"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v9

    const/16 v0, 0xde

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "fivesuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x67

    aput-object v0, v1, v3

    const/16 v0, 0x58

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "fl"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x68

    aput-object v0, v1, v3

    const/16 v0, 0xa2

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "fourinferior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x69

    aput-object v0, v1, v3

    const/16 v0, 0x34

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "fouroldstyle"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x6a

    aput-object v0, v1, v3

    const/16 v0, 0xdd

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "foursuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x6b

    aput-object v0, v1, v3

    const/16 v0, 0x2f

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "fraction"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x6c

    aput-object v0, v1, v3

    const/16 v0, 0x2d

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "hyphen"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x6d

    aput-object v0, v1, v3

    const/16 v0, 0x5f

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "hypheninferior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x6e

    aput-object v0, v1, v3

    const/16 v0, 0xd1

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "hyphensuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x6f

    aput-object v0, v1, v3

    const/16 v0, 0xe9

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "isuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x70

    aput-object v0, v1, v3

    const/16 v0, 0xf1

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "lsuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x71

    aput-object v0, v1, v3

    const/16 v0, 0xf7

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "msuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x72

    aput-object v0, v1, v3

    const/16 v0, 0xbb

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "nineinferior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x73

    aput-object v0, v1, v3

    const/16 v0, 0x39

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "nineoldstyle"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x74

    aput-object v0, v1, v3

    const/16 v0, 0xe1

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "ninesuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x75

    aput-object v0, v1, v3

    const/16 v0, 0xf6

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "nsuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x76

    aput-object v0, v1, v3

    const/16 v0, 0x2b

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "onedotenleader"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x77

    aput-object v0, v1, v3

    const/16 v0, 0x4a

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "oneeighth"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x78

    aput-object v0, v1, v3

    const/16 v0, 0x7c

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "onefitted"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x79

    aput-object v0, v1, v3

    const/16 v0, 0x48

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "onehalf"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x7a

    aput-object v0, v1, v3

    const/16 v0, 0xc1

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "oneinferior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x7b

    aput-object v0, v1, v3

    const/16 v0, 0x31

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "oneoldstyle"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x7c

    aput-object v0, v1, v3

    const/16 v0, 0x47

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "onequarter"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x7d

    aput-object v0, v1, v3

    const/16 v0, 0xda

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "onesuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x7e

    aput-object v0, v1, v3

    const/16 v0, 0x4e

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "onethird"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x7f

    aput-object v0, v1, v3

    const/16 v0, 0xaf

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "osuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x80

    aput-object v0, v1, v3

    const/16 v0, 0x5b

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "parenleftinferior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x81

    aput-object v0, v1, v3

    const/16 v0, 0x28

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "parenleftsuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x82

    aput-object v0, v1, v3

    const/16 v0, 0x5d

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "parenrightinferior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x83

    aput-object v0, v1, v3

    const/16 v0, 0x29

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "parenrightsuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x84

    aput-object v0, v1, v3

    const/16 v0, 0x2e

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "period"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x85

    aput-object v0, v1, v3

    const/16 v0, 0xb3

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "periodinferior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x86

    aput-object v0, v1, v3

    const/16 v0, 0xf9

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "periodsuperior"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0xc0

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "questiondownsmall"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v6

    const/16 v0, 0x3f

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "questionsmall"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x89

    aput-object v0, v1, v2

    const/16 v0, 0xe5

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "rsuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8a

    aput-object v0, v1, v2

    const/16 v0, 0x7d

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "rupiah"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8b

    aput-object v0, v1, v2

    const/16 v0, 0x3b

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "semicolon"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8c

    aput-object v0, v1, v2

    const/16 v0, 0x4d

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "seveneighths"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8d

    aput-object v0, v1, v2

    const/16 v0, 0xa6

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "seveninferior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8e

    aput-object v0, v1, v2

    const/16 v0, 0x37

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sevenoldstyle"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8f

    aput-object v0, v1, v2

    const/16 v0, 0xe0

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sevensuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x90

    aput-object v0, v1, v2

    const/16 v0, 0xa4

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sixinferior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x91

    aput-object v0, v1, v2

    const/16 v0, 0x36

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sixoldstyle"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x92

    aput-object v0, v1, v2

    const/16 v0, 0xdf

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sixsuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x93

    aput-object v0, v1, v2

    const/16 v0, 0x20

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "space"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x94

    aput-object v0, v1, v2

    const/16 v0, 0xea

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ssuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x95

    aput-object v0, v1, v2

    const/16 v0, 0x4b

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "threeeighths"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x96

    aput-object v0, v1, v2

    const/16 v0, 0xa3

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "threeinferior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x97

    aput-object v0, v1, v2

    const/16 v0, 0x33

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "threeoldstyle"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x98

    aput-object v0, v1, v2

    const/16 v0, 0x49

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "threequarters"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x99

    aput-object v0, v1, v2

    const/16 v0, 0x3d

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "threequartersemdash"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9a

    aput-object v0, v1, v2

    const/16 v0, 0xdc

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "threesuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9b

    aput-object v0, v1, v2

    const/16 v0, 0xe6

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "tsuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9c

    aput-object v0, v1, v2

    const/16 v0, 0x2a

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "twodotenleader"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9d

    aput-object v0, v1, v2

    const/16 v0, 0xaa

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "twoinferior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9e

    aput-object v0, v1, v2

    const/16 v0, 0x32

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "twooldstyle"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9f

    aput-object v0, v1, v2

    const/16 v0, 0xdb

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "twosuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa0

    aput-object v0, v1, v2

    const/16 v0, 0x4f

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "twothirds"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa1

    aput-object v0, v1, v2

    const/16 v0, 0xbc

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "zeroinferior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa2

    aput-object v0, v1, v2

    const/16 v0, 0x30

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "zerooldstyle"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa3

    aput-object v0, v1, v2

    const/16 v0, 0xe2

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "zerosuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa4

    aput-object v0, v1, v2

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;->MAC_EXPERT_ENCODING_TABLE:[[Ljava/lang/Object;

    .line 201
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 207
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;-><init>()V

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;->MAC_EXPERT_ENCODING_TABLE:[[Ljava/lang/Object;

    .line 208
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 210
    aget-object v5, v4, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;->add(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 217
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->MAC_EXPERT_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    return-object v0
.end method

.method public getEncodingName()Ljava/lang/String;
    .locals 1

    const-string v0, "MacExpertEncoding"

    return-object v0
.end method
