.class public Lcom/tom_roush/fontbox/encoding/StandardEncoding;
.super Lcom/tom_roush/fontbox/encoding/Encoding;
.source "StandardEncoding.java"


# static fields
.field private static final CHAR_CODE:I = 0x0

.field private static final CHAR_NAME:I = 0x1

.field public static final INSTANCE:Lcom/tom_roush/fontbox/encoding/StandardEncoding;

.field private static final STANDARD_ENCODING_TABLE:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x95

    new-array v0, v0, [[Ljava/lang/Object;

    const/16 v1, 0x41

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "A"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0xe1

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AE"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/16 v2, 0x42

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "B"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/16 v3, 0x43

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "C"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    const/16 v4, 0x44

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "D"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v0, v6

    const/16 v5, 0x45

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "E"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v0, v7

    const/16 v6, 0x46

    .line 41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "F"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v0, v8

    const/16 v7, 0x47

    .line 42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "G"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v0, v9

    const/16 v8, 0x48

    .line 43
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "H"

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v10, 0x8

    aput-object v9, v0, v10

    const/16 v9, 0x49

    .line 44
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "I"

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v0, v11

    const/16 v10, 0x4a

    .line 45
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "J"

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0xa

    aput-object v11, v0, v12

    const/16 v11, 0x4b

    .line 46
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "K"

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v0, v13

    const/16 v12, 0x4c

    .line 47
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "L"

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v0, v14

    const/16 v13, 0xe8

    .line 48
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Lslash"

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0xd

    aput-object v13, v0, v14

    const/16 v13, 0x4d

    .line 49
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "M"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v0, v15

    const/16 v14, 0x4e

    .line 50
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "N"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v0, v15

    const/16 v14, 0x4f

    .line 51
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "O"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v0, v15

    const/16 v14, 0xea

    .line 52
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "OE"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v0, v15

    const/16 v14, 0xe9

    .line 53
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Oslash"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x12

    aput-object v14, v0, v15

    const/16 v14, 0x50

    .line 54
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "P"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x13

    aput-object v14, v0, v15

    const/16 v14, 0x51

    .line 55
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "Q"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x14

    aput-object v14, v0, v15

    const/16 v14, 0x52

    .line 56
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "R"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x15

    aput-object v14, v0, v15

    const/16 v14, 0x53

    .line 57
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "S"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x16

    aput-object v14, v0, v15

    const/16 v14, 0x54

    .line 58
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "T"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x17

    aput-object v14, v0, v15

    const/16 v14, 0x55

    .line 59
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "U"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x18

    aput-object v14, v0, v15

    const/16 v14, 0x56

    .line 60
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "V"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x19

    aput-object v14, v0, v15

    const/16 v14, 0x57

    .line 61
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "W"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1a

    aput-object v14, v0, v15

    const/16 v14, 0x58

    .line 62
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "X"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1b

    aput-object v14, v0, v15

    const/16 v14, 0x59

    .line 63
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Y"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1c

    aput-object v14, v0, v15

    const/16 v14, 0x5a

    .line 64
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Z"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1d

    aput-object v14, v0, v15

    const/16 v14, 0x61

    .line 65
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "a"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1e

    aput-object v14, v0, v15

    const/16 v14, 0xc2

    .line 66
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "acute"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1f

    aput-object v14, v0, v15

    const/16 v14, 0xf1

    .line 67
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "ae"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x20

    aput-object v14, v0, v15

    const/16 v14, 0x26

    .line 68
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "ampersand"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x21

    aput-object v14, v0, v15

    const/16 v14, 0x5e

    .line 69
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "asciicircum"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x22

    aput-object v14, v0, v15

    const/16 v14, 0x7e

    .line 70
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "asciitilde"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x23

    aput-object v14, v0, v15

    const/16 v14, 0x2a

    .line 71
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "asterisk"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x24

    aput-object v14, v0, v15

    const/16 v14, 0x40

    .line 72
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "at"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x25

    aput-object v14, v0, v15

    const/16 v14, 0x62

    .line 73
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "b"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x26

    aput-object v14, v0, v15

    const/16 v14, 0x5c

    .line 74
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "backslash"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x27

    aput-object v14, v0, v15

    const/16 v14, 0x7c

    .line 75
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "bar"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x28

    aput-object v14, v0, v15

    const/16 v14, 0x7b

    .line 76
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "braceleft"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x29

    aput-object v14, v0, v15

    const/16 v14, 0x7d

    .line 77
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "braceright"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2a

    aput-object v14, v0, v15

    const/16 v14, 0x5b

    .line 78
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "bracketleft"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2b

    aput-object v14, v0, v15

    const/16 v14, 0x5d

    .line 79
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "bracketright"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2c

    aput-object v14, v0, v15

    const/16 v14, 0xc6

    .line 80
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "breve"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2d

    aput-object v14, v0, v15

    const/16 v14, 0xb7

    .line 81
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "bullet"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2e

    aput-object v14, v0, v15

    const/16 v14, 0x63

    .line 82
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "c"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2f

    aput-object v14, v0, v15

    const/16 v14, 0xcf

    .line 83
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "caron"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x30

    aput-object v14, v0, v15

    const/16 v14, 0xcb

    .line 84
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "cedilla"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x31

    aput-object v14, v0, v15

    const/16 v14, 0xa2

    .line 85
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "cent"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x32

    aput-object v14, v0, v15

    const/16 v14, 0xc3

    .line 86
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "circumflex"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x33

    aput-object v14, v0, v15

    const/16 v14, 0x3a

    .line 87
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "colon"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x34

    aput-object v14, v0, v15

    const/16 v14, 0x2c

    .line 88
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "comma"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x35

    aput-object v14, v0, v15

    const/16 v14, 0xa8

    .line 89
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "currency"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x36

    aput-object v14, v0, v15

    const/16 v14, 0x64

    .line 90
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "d"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x37

    aput-object v14, v0, v15

    const/16 v14, 0xb2

    .line 91
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "dagger"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x38

    aput-object v14, v0, v15

    const/16 v14, 0xb3

    .line 92
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "daggerdbl"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x39

    aput-object v14, v0, v15

    const/16 v14, 0xc8

    .line 93
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "dieresis"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x3a

    aput-object v14, v0, v15

    const/16 v14, 0x24

    .line 94
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "dollar"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x3b

    aput-object v14, v0, v15

    const/16 v14, 0xc7

    .line 95
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "dotaccent"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x3c

    aput-object v14, v0, v15

    const/16 v14, 0xf5

    .line 96
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "dotlessi"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x3d

    aput-object v14, v0, v15

    const/16 v14, 0x65

    .line 97
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "e"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x3e

    aput-object v14, v0, v15

    const/16 v14, 0x38

    .line 98
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "eight"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x3f

    aput-object v14, v0, v15

    const/16 v14, 0xbc

    .line 99
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "ellipsis"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x40

    aput-object v14, v0, v15

    const/16 v14, 0xd0

    .line 100
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "emdash"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v0, v1

    const/16 v1, 0xb1

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v14, "endash"

    filled-new-array {v1, v14}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x3d

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "equal"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x21

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exclam"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xa1

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exclamdown"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x66

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "f"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0xae

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fi"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x35

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "five"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0xaf

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fl"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v9

    const/16 v1, 0xa6

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "florin"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v10

    const/16 v1, 0x34

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "four"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v11

    const/16 v1, 0xa4

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fraction"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v12

    const/16 v1, 0x67

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "g"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v13

    const/16 v1, 0xfb

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "germandbls"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const/16 v1, 0xc1

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "grave"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const/16 v1, 0x3e

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "greater"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const/16 v1, 0xab

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "guillemotleft"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const/16 v1, 0xbb

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "guillemotright"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const/16 v1, 0xac

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "guilsinglleft"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const/16 v1, 0xad

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "guilsinglright"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const/16 v1, 0x68

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "h"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const/16 v1, 0xcd

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hungarumlaut"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const/16 v1, 0x2d

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hyphen"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const/16 v1, 0x69

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "i"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const/16 v1, 0x6a

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "j"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const/16 v1, 0x6b

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const/16 v1, 0x6c

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const/16 v1, 0x3c

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "less"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const/16 v1, 0xf8

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lslash"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const/16 v1, 0x6d

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const/16 v1, 0xc5

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "macron"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const/16 v1, 0x6e

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "n"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const/16 v1, 0x39

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nine"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const/16 v1, 0x23

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "numbersign"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const/16 v1, 0x6f

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "o"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const/16 v1, 0xfa

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oe"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const/16 v1, 0xce

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ogonek"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const/16 v1, 0x31

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "one"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const/16 v1, 0xe3

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ordfeminine"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const/16 v1, 0xeb

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ordmasculine"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const/16 v1, 0xf9

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oslash"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const/16 v1, 0x70

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "p"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const/16 v1, 0xb6

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "paragraph"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const/16 v1, 0x28

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "parenleft"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const/16 v1, 0x29

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "parenright"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const/16 v1, 0x25

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "percent"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const/16 v1, 0x2e

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "period"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const/16 v1, 0xb4

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "periodcentered"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const/16 v1, 0xbd

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "perthousand"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const/16 v1, 0x2b

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plus"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const/16 v1, 0x71

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "q"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const/16 v1, 0x3f

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "question"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const/16 v1, 0xbf

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "questiondown"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const/16 v1, 0x22

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quotedbl"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const/16 v1, 0xb9

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quotedblbase"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const/16 v1, 0xaa

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quotedblleft"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const/16 v1, 0xba

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quotedblright"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const/16 v1, 0x60

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quoteleft"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const/16 v1, 0x27

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quoteright"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const/16 v1, 0xb8

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quotesinglbase"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const/16 v1, 0xa9

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quotesingle"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const/16 v1, 0x72

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "r"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const/16 v1, 0xca

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ring"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const/16 v1, 0x73

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const/16 v1, 0xa7

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "section"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const/16 v1, 0x3b

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "semicolon"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const/16 v1, 0x37

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seven"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const/16 v1, 0x36

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "six"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const/16 v1, 0x2f

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "slash"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const/16 v1, 0x20

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "space"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const/16 v1, 0xa3

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sterling"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const/16 v1, 0x74

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "t"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const/16 v1, 0x33

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "three"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const/16 v1, 0xc4

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tilde"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const/16 v1, 0x32

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "two"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const/16 v1, 0x75

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "u"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const/16 v1, 0x5f

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "underscore"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const/16 v1, 0x76

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const/16 v1, 0x77

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "w"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const/16 v1, 0x78

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const/16 v1, 0x79

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "y"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const/16 v1, 0xa5

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "yen"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const/16 v1, 0x7a

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "z"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const/16 v1, 0x30

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "zero"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x94

    aput-object v1, v0, v2

    sput-object v0, Lcom/tom_roush/fontbox/encoding/StandardEncoding;->STANDARD_ENCODING_TABLE:[[Ljava/lang/Object;

    .line 188
    new-instance v0, Lcom/tom_roush/fontbox/encoding/StandardEncoding;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/encoding/StandardEncoding;-><init>()V

    sput-object v0, Lcom/tom_roush/fontbox/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/fontbox/encoding/StandardEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 194
    invoke-direct {p0}, Lcom/tom_roush/fontbox/encoding/Encoding;-><init>()V

    sget-object v0, Lcom/tom_roush/fontbox/encoding/StandardEncoding;->STANDARD_ENCODING_TABLE:[[Ljava/lang/Object;

    .line 195
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 197
    aget-object v5, v4, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/tom_roush/fontbox/encoding/StandardEncoding;->addCharacterEncoding(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
