.class public Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;
.super Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
.source "WinAnsiEncoding.java"


# static fields
.field public static final INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

.field private static final WIN_ANSI_ENCODING_TABLE:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0xda

    new-array v1, v0, [[Ljava/lang/Object;

    const/16 v2, 0x41

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "A"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0xc6

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "AE"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/16 v4, 0xc1

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Aacute"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/16 v5, 0xc2

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Acircumflex"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/16 v6, 0xc4

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Adieresis"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v1, v8

    const/16 v7, 0xc0

    .line 38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Agrave"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/16 v8, 0xc5

    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Aring"

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v1, v10

    const/16 v9, 0xc3

    .line 40
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Atilde"

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const/16 v10, 0x42

    .line 41
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "B"

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x8

    aput-object v11, v1, v12

    const/16 v11, 0x43

    .line 42
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "C"

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v1, v13

    const/16 v12, 0xc7

    .line 43
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Ccedilla"

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0xa

    aput-object v13, v1, v14

    const/16 v13, 0x44

    .line 44
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "D"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v1, v15

    const/16 v14, 0x45

    .line 45
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v12, "E"

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v15, 0xc

    aput-object v12, v1, v15

    const/16 v12, 0xc9

    .line 46
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v12, "Eacute"

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v15, 0xd

    aput-object v12, v1, v15

    const/16 v12, 0xca

    .line 47
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v12, "Ecircumflex"

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v15, 0xe

    aput-object v12, v1, v15

    const/16 v12, 0xcb

    .line 48
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v12, "Edieresis"

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v15, 0xf

    aput-object v12, v1, v15

    const/16 v12, 0xc8

    .line 49
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v12, "Egrave"

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v15, 0x10

    aput-object v12, v1, v15

    const/16 v12, 0xd0

    .line 50
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v12, "Eth"

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v15, 0x11

    aput-object v12, v1, v15

    const/16 v12, 0x80

    .line 51
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v3, "Euro"

    filled-new-array {v15, v3}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v15, 0x12

    aput-object v3, v1, v15

    const/16 v3, 0x46

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "F"

    filled-new-array {v15, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v15, 0x13

    aput-object v8, v1, v15

    const/16 v8, 0x47

    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v6, "G"

    filled-new-array {v15, v6}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x14

    aput-object v6, v1, v15

    const/16 v6, 0x48

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "H"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x15

    aput-object v6, v1, v15

    const/16 v6, 0x49

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "I"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x16

    aput-object v6, v1, v15

    const/16 v6, 0xcd

    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Iacute"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x17

    aput-object v6, v1, v15

    const/16 v6, 0xce

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Icircumflex"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x18

    aput-object v6, v1, v15

    const/16 v6, 0xcf

    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Idieresis"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x19

    aput-object v6, v1, v15

    const/16 v6, 0xcc

    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Igrave"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x1a

    aput-object v6, v1, v15

    const/16 v6, 0x4a

    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "J"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x1b

    aput-object v6, v1, v15

    const/16 v6, 0x4b

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "K"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x1c

    aput-object v6, v1, v15

    const/16 v6, 0x4c

    .line 62
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "L"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x1d

    aput-object v6, v1, v15

    const/16 v6, 0x4d

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "M"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x1e

    aput-object v6, v1, v15

    const/16 v6, 0x4e

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "N"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x1f

    aput-object v6, v1, v15

    const/16 v6, 0xd1

    .line 65
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Ntilde"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x20

    aput-object v6, v1, v15

    const/16 v6, 0x4f

    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "O"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x21

    aput-object v6, v1, v15

    const/16 v6, 0x8c

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "OE"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x22

    aput-object v6, v1, v15

    const/16 v6, 0xd3

    .line 68
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Oacute"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x23

    aput-object v6, v1, v15

    const/16 v6, 0xd4

    .line 69
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Ocircumflex"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x24

    aput-object v6, v1, v15

    const/16 v6, 0xd6

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Odieresis"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x25

    aput-object v6, v1, v15

    const/16 v6, 0xd2

    .line 71
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Ograve"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x26

    aput-object v6, v1, v15

    const/16 v6, 0xd8

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Oslash"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x27

    aput-object v6, v1, v15

    const/16 v6, 0xd5

    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Otilde"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x28

    aput-object v6, v1, v15

    const/16 v6, 0x50

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "P"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x29

    aput-object v6, v1, v15

    const/16 v6, 0x51

    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Q"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x2a

    aput-object v6, v1, v15

    const/16 v6, 0x52

    .line 76
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "R"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x2b

    aput-object v6, v1, v15

    const/16 v6, 0x53

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "S"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x2c

    aput-object v6, v1, v15

    const/16 v6, 0x8a

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Scaron"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x2d

    aput-object v6, v1, v15

    const/16 v6, 0x54

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "T"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x2e

    aput-object v6, v1, v15

    const/16 v6, 0xde

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Thorn"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x2f

    aput-object v6, v1, v15

    const/16 v6, 0x55

    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "U"

    filled-new-array {v6, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x30

    aput-object v6, v1, v15

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Uacute"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x31

    aput-object v0, v1, v6

    const/16 v0, 0xdb

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Ucircumflex"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x32

    aput-object v0, v1, v6

    const/16 v0, 0xdc

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Udieresis"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x33

    aput-object v0, v1, v6

    const/16 v0, 0xd9

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Ugrave"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x34

    aput-object v0, v1, v6

    const/16 v0, 0x56

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "V"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x35

    aput-object v0, v1, v6

    const/16 v0, 0x57

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "W"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x36

    aput-object v0, v1, v6

    const/16 v0, 0x58

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "X"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x37

    aput-object v0, v1, v6

    const/16 v0, 0x59

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Y"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x38

    aput-object v0, v1, v6

    const/16 v0, 0xdd

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Yacute"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x39

    aput-object v0, v1, v6

    const/16 v0, 0x9f

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Ydieresis"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x3a

    aput-object v0, v1, v6

    const/16 v0, 0x5a

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Z"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x3b

    aput-object v0, v1, v6

    const/16 v0, 0x8e

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Zcaron"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x3c

    aput-object v0, v1, v6

    const/16 v0, 0x61

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "a"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x3d

    aput-object v0, v1, v6

    const/16 v0, 0xe1

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "aacute"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x3e

    aput-object v0, v1, v6

    const/16 v0, 0xe2

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "acircumflex"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x3f

    aput-object v0, v1, v6

    const/16 v0, 0xb4

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "acute"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x40

    aput-object v0, v1, v6

    const/16 v0, 0xe4

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "adieresis"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0xe6

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ae"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v10

    const/16 v0, 0xe0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "agrave"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v11

    const/16 v0, 0x26

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ampersand"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v13

    const/16 v0, 0xe5

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "aring"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v14

    const/16 v0, 0x5e

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "asciicircum"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    const/16 v0, 0x7e

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "asciitilde"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v8

    const/16 v0, 0x2a

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "asterisk"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x48

    aput-object v0, v1, v2

    const/16 v0, 0x40

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "at"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x49

    aput-object v0, v1, v2

    const/16 v0, 0xe3

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "atilde"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4a

    aput-object v0, v1, v2

    const/16 v0, 0x62

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "b"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4b

    aput-object v0, v1, v2

    const/16 v0, 0x5c

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "backslash"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4c

    aput-object v0, v1, v2

    const/16 v0, 0x7c

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "bar"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4d

    aput-object v0, v1, v2

    const/16 v0, 0x7b

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "braceleft"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4e

    aput-object v0, v1, v2

    const/16 v0, 0x7d

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "braceright"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4f

    aput-object v0, v1, v2

    const/16 v0, 0x5b

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "bracketleft"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x50

    aput-object v0, v1, v2

    const/16 v0, 0x5d

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "bracketright"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, v1, v2

    const/16 v0, 0xa6

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "brokenbar"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, v1, v2

    const/16 v0, 0x95

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "bullet"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x53

    aput-object v0, v1, v2

    const/16 v0, 0x63

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "c"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x54

    aput-object v0, v1, v2

    const/16 v0, 0xe7

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ccedilla"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x55

    aput-object v0, v1, v2

    const/16 v0, 0xb8

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "cedilla"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x56

    aput-object v0, v1, v2

    const/16 v0, 0xa2

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "cent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x57

    aput-object v0, v1, v2

    const/16 v0, 0x88

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "circumflex"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x58

    aput-object v0, v1, v2

    const/16 v0, 0x3a

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "colon"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x59

    aput-object v0, v1, v2

    const/16 v0, 0x2c

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "comma"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5a

    aput-object v0, v1, v2

    const/16 v0, 0xa9

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "copyright"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5b

    aput-object v0, v1, v2

    const/16 v0, 0xa4

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "currency"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, v1, v2

    const/16 v0, 0x64

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "d"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, v1, v2

    const/16 v0, 0x86

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "dagger"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5e

    aput-object v0, v1, v2

    const/16 v0, 0x87

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "daggerdbl"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5f

    aput-object v0, v1, v2

    const/16 v0, 0xb0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "degree"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x60

    aput-object v0, v1, v2

    const/16 v0, 0xa8

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "dieresis"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x61

    aput-object v0, v1, v2

    const/16 v0, 0xf7

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "divide"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x62

    aput-object v0, v1, v2

    const/16 v0, 0x24

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "dollar"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x63

    aput-object v0, v1, v2

    const/16 v0, 0x65

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "e"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x64

    aput-object v0, v1, v2

    const/16 v0, 0xe9

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "eacute"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x65

    aput-object v0, v1, v2

    const/16 v0, 0xea

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ecircumflex"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x66

    aput-object v0, v1, v2

    const/16 v0, 0xeb

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "edieresis"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x67

    aput-object v0, v1, v2

    const/16 v0, 0xe8

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "egrave"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x68

    aput-object v0, v1, v2

    const/16 v0, 0x38

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "eight"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x69

    aput-object v0, v1, v2

    const/16 v0, 0x85

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ellipsis"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6a

    aput-object v0, v1, v2

    const/16 v0, 0x97

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "emdash"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6b

    aput-object v0, v1, v2

    const/16 v0, 0x96

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "endash"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6c

    aput-object v0, v1, v2

    const/16 v0, 0x3d

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "equal"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6d

    aput-object v0, v1, v2

    const/16 v0, 0xf0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "eth"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6e

    aput-object v0, v1, v2

    const/16 v0, 0x21

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "exclam"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6f

    aput-object v0, v1, v2

    const/16 v0, 0xa1

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "exclamdown"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x70

    aput-object v0, v1, v2

    const/16 v0, 0x66

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "f"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x71

    aput-object v0, v1, v2

    const/16 v0, 0x35

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "five"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x72

    aput-object v0, v1, v2

    const/16 v0, 0x83

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "florin"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x73

    aput-object v0, v1, v2

    const/16 v0, 0x34

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "four"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x74

    aput-object v0, v1, v2

    const/16 v0, 0x67

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "g"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x75

    aput-object v0, v1, v2

    const/16 v0, 0xdf

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "germandbls"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x76

    aput-object v0, v1, v2

    const/16 v0, 0x60

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "grave"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x77

    aput-object v0, v1, v2

    const/16 v0, 0x3e

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "greater"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x78

    aput-object v0, v1, v2

    const/16 v0, 0xab

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "guillemotleft"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x79

    aput-object v0, v1, v2

    const/16 v0, 0xbb

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "guillemotright"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7a

    aput-object v0, v1, v2

    const/16 v0, 0x8b

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "guilsinglleft"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7b

    aput-object v0, v1, v2

    const/16 v0, 0x9b

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "guilsinglright"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7c

    aput-object v0, v1, v2

    const/16 v0, 0x68

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "h"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7d

    aput-object v0, v1, v2

    const/16 v0, 0x2d

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "hyphen"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7e

    aput-object v0, v1, v2

    const/16 v0, 0x69

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "i"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7f

    aput-object v0, v1, v2

    const/16 v0, 0xed

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "iacute"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v12

    const/16 v0, 0xee

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "icircumflex"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x81

    aput-object v0, v1, v2

    const/16 v0, 0xef

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "idieresis"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x82

    aput-object v0, v1, v2

    const/16 v0, 0xec

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "igrave"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x83

    aput-object v0, v1, v2

    const/16 v0, 0x6a

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "j"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x84

    aput-object v0, v1, v2

    const/16 v0, 0x6b

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "k"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x85

    aput-object v0, v1, v2

    const/16 v0, 0x6c

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "l"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x86

    aput-object v0, v1, v2

    const/16 v0, 0x3c

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "less"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x87

    aput-object v0, v1, v2

    const/16 v0, 0xac

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "logicalnot"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x88

    aput-object v0, v1, v2

    const/16 v0, 0x6d

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "m"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x89

    aput-object v0, v1, v2

    const/16 v0, 0xaf

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "macron"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8a

    aput-object v0, v1, v2

    const/16 v0, 0xb5

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "mu"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8b

    aput-object v0, v1, v2

    const/16 v0, 0xd7

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "multiply"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8c

    aput-object v0, v1, v2

    const/16 v0, 0x6e

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "n"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8d

    aput-object v0, v1, v2

    const/16 v0, 0x39

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "nine"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8e

    aput-object v0, v1, v2

    const/16 v0, 0xf1

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ntilde"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8f

    aput-object v0, v1, v2

    const/16 v0, 0x23

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "numbersign"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x90

    aput-object v0, v1, v2

    const/16 v0, 0x6f

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "o"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x91

    aput-object v0, v1, v2

    const/16 v0, 0xf3

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "oacute"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x92

    aput-object v0, v1, v2

    const/16 v0, 0xf4

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ocircumflex"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x93

    aput-object v0, v1, v2

    const/16 v0, 0xf6

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "odieresis"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x94

    aput-object v0, v1, v2

    const/16 v0, 0x9c

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "oe"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x95

    aput-object v0, v1, v2

    const/16 v0, 0xf2

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ograve"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x96

    aput-object v0, v1, v2

    const/16 v0, 0x31

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "one"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x97

    aput-object v0, v1, v2

    const/16 v0, 0xbd

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "onehalf"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x98

    aput-object v0, v1, v2

    const/16 v0, 0xbc

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "onequarter"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x99

    aput-object v0, v1, v2

    const/16 v0, 0xb9

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "onesuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9a

    aput-object v0, v1, v2

    const/16 v0, 0xaa

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ordfeminine"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9b

    aput-object v0, v1, v2

    const/16 v0, 0xba

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ordmasculine"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9c

    aput-object v0, v1, v2

    const/16 v0, 0xf8

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "oslash"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9d

    aput-object v0, v1, v2

    const/16 v0, 0xf5

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "otilde"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9e

    aput-object v0, v1, v2

    const/16 v0, 0x70

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "p"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9f

    aput-object v0, v1, v2

    const/16 v0, 0xb6

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "paragraph"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa0

    aput-object v0, v1, v2

    const/16 v0, 0x28

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenleft"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa1

    aput-object v0, v1, v2

    const/16 v0, 0x29

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenright"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa2

    aput-object v0, v1, v2

    const/16 v0, 0x25

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "percent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa3

    aput-object v0, v1, v2

    const/16 v0, 0x2e

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "period"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa4

    aput-object v0, v1, v2

    const/16 v0, 0xb7

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "periodcentered"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa5

    aput-object v0, v1, v2

    const/16 v0, 0x89

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "perthousand"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa6

    aput-object v0, v1, v2

    const/16 v0, 0x2b

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "plus"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa7

    aput-object v0, v1, v2

    const/16 v0, 0xb1

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "plusminus"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa8

    aput-object v0, v1, v2

    const/16 v0, 0x71

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "q"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa9

    aput-object v0, v1, v2

    const/16 v0, 0x3f

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "question"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xaa

    aput-object v0, v1, v2

    const/16 v0, 0xbf

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "questiondown"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xab

    aput-object v0, v1, v2

    const/16 v0, 0x22

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "quotedbl"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xac

    aput-object v0, v1, v2

    const/16 v0, 0x84

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "quotedblbase"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xad

    aput-object v0, v1, v2

    const/16 v0, 0x93

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "quotedblleft"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xae

    aput-object v0, v1, v2

    const/16 v0, 0x94

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "quotedblright"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xaf

    aput-object v0, v1, v2

    const/16 v0, 0x91

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "quoteleft"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb0

    aput-object v0, v1, v2

    const/16 v0, 0x92

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "quoteright"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb1

    aput-object v0, v1, v2

    const/16 v0, 0x82

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "quotesinglbase"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb2

    aput-object v0, v1, v2

    const/16 v0, 0x27

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "quotesingle"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb3

    aput-object v0, v1, v2

    const/16 v0, 0x72

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "r"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb4

    aput-object v0, v1, v2

    const/16 v0, 0xae

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "registered"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb5

    aput-object v0, v1, v2

    const/16 v0, 0x73

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "s"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb6

    aput-object v0, v1, v2

    const/16 v0, 0x9a

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "scaron"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb7

    aput-object v0, v1, v2

    const/16 v0, 0xa7

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "section"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb8

    aput-object v0, v1, v2

    const/16 v0, 0x3b

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "semicolon"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb9

    aput-object v0, v1, v2

    const/16 v0, 0x37

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "seven"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xba

    aput-object v0, v1, v2

    const/16 v0, 0x36

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "six"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xbb

    aput-object v0, v1, v2

    const/16 v0, 0x2f

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "slash"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xbc

    aput-object v0, v1, v2

    const/16 v0, 0x20

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "space"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xbd

    aput-object v0, v1, v2

    const/16 v0, 0xa3

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sterling"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xbe

    aput-object v0, v1, v2

    const/16 v0, 0x74

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "t"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xbf

    aput-object v0, v1, v2

    const/16 v0, 0xfe

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "thorn"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v7

    const/16 v0, 0x33

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "three"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v4

    const/16 v0, 0xbe

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "threequarters"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v5

    const/16 v0, 0xb3

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "threesuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v9

    const/16 v0, 0x98

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "tilde"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xc4

    aput-object v0, v1, v2

    const/16 v0, 0x99

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "trademark"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xc5

    aput-object v0, v1, v2

    const/16 v0, 0x32

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "two"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xc6

    aput-object v0, v1, v2

    const/16 v0, 0xb2

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "twosuperior"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xc7

    aput-object v0, v1, v2

    const/16 v0, 0x75

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "u"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xc8

    aput-object v0, v1, v2

    const/16 v0, 0xfa

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "uacute"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xc9

    aput-object v0, v1, v2

    const/16 v0, 0xfb

    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ucircumflex"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xca

    aput-object v0, v1, v2

    const/16 v0, 0xfc

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "udieresis"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xcb

    aput-object v0, v1, v2

    const/16 v0, 0xf9

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ugrave"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xcc

    aput-object v0, v1, v2

    const/16 v0, 0x5f

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "underscore"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xcd

    aput-object v0, v1, v2

    const/16 v0, 0x76

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "v"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xce

    aput-object v0, v1, v2

    const/16 v0, 0x77

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "w"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xcf

    aput-object v0, v1, v2

    const/16 v0, 0x78

    .line 241
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "x"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd0

    aput-object v0, v1, v2

    const/16 v0, 0x79

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "y"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd1

    aput-object v0, v1, v2

    const/16 v0, 0xfd

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "yacute"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd2

    aput-object v0, v1, v2

    const/16 v0, 0xff

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ydieresis"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd3

    aput-object v0, v1, v2

    const/16 v0, 0xa5

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "yen"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd4

    aput-object v0, v1, v2

    const/16 v0, 0x7a

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "z"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd5

    aput-object v0, v1, v2

    const/16 v0, 0x9e

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "zcaron"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd6

    aput-object v0, v1, v2

    const/16 v0, 0x30

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "zero"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd7

    aput-object v0, v1, v2

    const/16 v0, 0xa0

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "nbspace"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd8

    aput-object v0, v1, v2

    const/16 v0, 0xad

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sfthyphen"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd9

    aput-object v0, v1, v2

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->WIN_ANSI_ENCODING_TABLE:[[Ljava/lang/Object;

    .line 259
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 265
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;-><init>()V

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->WIN_ANSI_ENCODING_TABLE:[[Ljava/lang/Object;

    .line 266
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 268
    aget-object v5, v4, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->add(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_1
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->codeToName:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bullet"

    .line 277
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->add(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 285
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->WIN_ANSI_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    return-object v0
.end method

.method public getEncodingName()Ljava/lang/String;
    .locals 1

    const-string v0, "WinAnsiEncoding"

    return-object v0
.end method
