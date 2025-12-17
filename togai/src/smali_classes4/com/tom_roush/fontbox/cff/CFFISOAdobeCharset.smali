.class public final Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;
.super Lcom/tom_roush/fontbox/cff/CFFCharset;
.source "CFFISOAdobeCharset.java"


# static fields
.field private static final CFF_ISO_ADOBE_CHARSET_TABLE:[[Ljava/lang/Object;

.field private static final CHAR_CODE:I = 0x0

.field private static final CHAR_NAME:I = 0x1

.field private static final INSTANCE:Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xe5

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ".notdef"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "space"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x2

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "exclam"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "quotedbl"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "numbersign"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x5

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "dollar"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "percent"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x7

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ampersand"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "quoteright"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "parenleft"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "parenright"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xb

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "asterisk"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xc

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "plus"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xd

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "comma"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xe

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "hyphen"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xf

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "period"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x10

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "slash"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x11

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "zero"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x12

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "one"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x13

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "two"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x14

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "three"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x15

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "four"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x16

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "five"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x16

    aput-object v3, v0, v4

    const/16 v3, 0x17

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "six"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x17

    aput-object v3, v0, v4

    const/16 v3, 0x18

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "seven"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x18

    aput-object v3, v0, v4

    const/16 v3, 0x19

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "eight"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x19

    aput-object v3, v0, v4

    const/16 v3, 0x1a

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nine"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1a

    aput-object v3, v0, v4

    const/16 v3, 0x1b

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "colon"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1b

    aput-object v3, v0, v4

    const/16 v3, 0x1c

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "semicolon"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1c

    aput-object v3, v0, v4

    const/16 v3, 0x1d

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "less"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1d

    aput-object v3, v0, v4

    const/16 v3, 0x1e

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "equal"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1e

    aput-object v3, v0, v4

    const/16 v3, 0x1f

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "greater"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1f

    aput-object v3, v0, v4

    const/16 v3, 0x20

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "question"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x20

    aput-object v3, v0, v4

    const/16 v3, 0x21

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "at"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x21

    aput-object v3, v0, v4

    const/16 v3, 0x22

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "A"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x22

    aput-object v3, v0, v4

    const/16 v3, 0x23

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "B"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x23

    aput-object v3, v0, v4

    const/16 v3, 0x24

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "C"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x24

    aput-object v3, v0, v4

    const/16 v3, 0x25

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "D"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x25

    aput-object v3, v0, v4

    const/16 v3, 0x26

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "E"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x26

    aput-object v3, v0, v4

    const/16 v3, 0x27

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "F"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x27

    aput-object v3, v0, v4

    const/16 v3, 0x28

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "G"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x28

    aput-object v3, v0, v4

    const/16 v3, 0x29

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "H"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x29

    aput-object v3, v0, v4

    const/16 v3, 0x2a

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "I"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2a

    aput-object v3, v0, v4

    const/16 v3, 0x2b

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "J"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2b

    aput-object v3, v0, v4

    const/16 v3, 0x2c

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "K"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2c

    aput-object v3, v0, v4

    const/16 v3, 0x2d

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "L"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2d

    aput-object v3, v0, v4

    const/16 v3, 0x2e

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "M"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2e

    aput-object v3, v0, v4

    const/16 v3, 0x2f

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "N"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2f

    aput-object v3, v0, v4

    const/16 v3, 0x30

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "O"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x30

    aput-object v3, v0, v4

    const/16 v3, 0x31

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "P"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x31

    aput-object v3, v0, v4

    const/16 v3, 0x32

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Q"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x32

    aput-object v3, v0, v4

    const/16 v3, 0x33

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "R"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x33

    aput-object v3, v0, v4

    const/16 v3, 0x34

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "S"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x34

    aput-object v3, v0, v4

    const/16 v3, 0x35

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "T"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x35

    aput-object v3, v0, v4

    const/16 v3, 0x36

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "U"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x36

    aput-object v3, v0, v4

    const/16 v3, 0x37

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "V"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x37

    aput-object v3, v0, v4

    const/16 v3, 0x38

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "W"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x38

    aput-object v3, v0, v4

    const/16 v3, 0x39

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "X"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x39

    aput-object v3, v0, v4

    const/16 v3, 0x3a

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Y"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3a

    aput-object v3, v0, v4

    const/16 v3, 0x3b

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Z"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3b

    aput-object v3, v0, v4

    const/16 v3, 0x3c

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bracketleft"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3c

    aput-object v3, v0, v4

    const/16 v3, 0x3d

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "backslash"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3d

    aput-object v3, v0, v4

    const/16 v3, 0x3e

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bracketright"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3e

    aput-object v3, v0, v4

    const/16 v3, 0x3f

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "asciicircum"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3f

    aput-object v3, v0, v4

    const/16 v3, 0x40

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "underscore"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x40

    aput-object v3, v0, v4

    const/16 v3, 0x41

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "quoteleft"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x41

    aput-object v3, v0, v4

    const/16 v3, 0x42

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "a"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x42

    aput-object v3, v0, v4

    const/16 v3, 0x43

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "b"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x43

    aput-object v3, v0, v4

    const/16 v3, 0x44

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "c"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x44

    aput-object v3, v0, v4

    const/16 v3, 0x45

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "d"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x45

    aput-object v3, v0, v4

    const/16 v3, 0x46

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "e"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x46

    aput-object v3, v0, v4

    const/16 v3, 0x47

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "f"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x47

    aput-object v3, v0, v4

    const/16 v3, 0x48

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "g"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x48

    aput-object v3, v0, v4

    const/16 v3, 0x49

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "h"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x49

    aput-object v3, v0, v4

    const/16 v3, 0x4a

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "i"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4a

    aput-object v3, v0, v4

    const/16 v3, 0x4b

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "j"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4b

    aput-object v3, v0, v4

    const/16 v3, 0x4c

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "k"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4c

    aput-object v3, v0, v4

    const/16 v3, 0x4d

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "l"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4d

    aput-object v3, v0, v4

    const/16 v3, 0x4e

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "m"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4e

    aput-object v3, v0, v4

    const/16 v3, 0x4f

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "n"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4f

    aput-object v3, v0, v4

    const/16 v3, 0x50

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "o"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x50

    aput-object v3, v0, v4

    const/16 v3, 0x51

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "p"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x51

    aput-object v3, v0, v4

    const/16 v3, 0x52

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "q"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x52

    aput-object v3, v0, v4

    const/16 v3, 0x53

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "r"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x53

    aput-object v3, v0, v4

    const/16 v3, 0x54

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "s"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x54

    aput-object v3, v0, v4

    const/16 v3, 0x55

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "t"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x55

    aput-object v3, v0, v4

    const/16 v3, 0x56

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "u"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x56

    aput-object v3, v0, v4

    const/16 v3, 0x57

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "v"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x57

    aput-object v3, v0, v4

    const/16 v3, 0x58

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "w"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x58

    aput-object v3, v0, v4

    const/16 v3, 0x59

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "x"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x59

    aput-object v3, v0, v4

    const/16 v3, 0x5a

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "y"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x5a

    aput-object v3, v0, v4

    const/16 v3, 0x5b

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "z"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x5b

    aput-object v3, v0, v4

    const/16 v3, 0x5c

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "braceleft"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x5c

    aput-object v3, v0, v4

    const/16 v3, 0x5d

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bar"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x5d

    aput-object v3, v0, v4

    const/16 v3, 0x5e

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "braceright"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x5e

    aput-object v3, v0, v4

    const/16 v3, 0x5f

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "asciitilde"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x5f

    aput-object v3, v0, v4

    const/16 v3, 0x60

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "exclamdown"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x60

    aput-object v3, v0, v4

    const/16 v3, 0x61

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cent"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x61

    aput-object v3, v0, v4

    const/16 v3, 0x62

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sterling"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x62

    aput-object v3, v0, v4

    const/16 v3, 0x63

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fraction"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x63

    aput-object v3, v0, v4

    const/16 v3, 0x64

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yen"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x64

    aput-object v3, v0, v4

    const/16 v3, 0x65

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "florin"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x65

    aput-object v3, v0, v4

    const/16 v3, 0x66

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "section"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x66

    aput-object v3, v0, v4

    const/16 v3, 0x67

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "currency"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x67

    aput-object v3, v0, v4

    const/16 v3, 0x68

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "quotesingle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x68

    aput-object v3, v0, v4

    const/16 v3, 0x69

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "quotedblleft"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x69

    aput-object v3, v0, v4

    const/16 v3, 0x6a

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "guillemotleft"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x6a

    aput-object v3, v0, v4

    const/16 v3, 0x6b

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "guilsinglleft"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x6b

    aput-object v3, v0, v4

    const/16 v3, 0x6c

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "guilsinglright"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x6c

    aput-object v3, v0, v4

    const/16 v3, 0x6d

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fi"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x6d

    aput-object v3, v0, v4

    const/16 v3, 0x6e

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fl"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x6e

    aput-object v3, v0, v4

    const/16 v3, 0x6f

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "endash"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x6f

    aput-object v3, v0, v4

    const/16 v3, 0x70

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dagger"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x70

    aput-object v3, v0, v4

    const/16 v3, 0x71

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "daggerdbl"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x71

    aput-object v3, v0, v4

    const/16 v3, 0x72

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "periodcentered"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x72

    aput-object v3, v0, v4

    const/16 v3, 0x73

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "paragraph"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x73

    aput-object v3, v0, v4

    const/16 v3, 0x74

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bullet"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x74

    aput-object v3, v0, v4

    const/16 v3, 0x75

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "quotesinglbase"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x75

    aput-object v3, v0, v4

    const/16 v3, 0x76

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "quotedblbase"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x76

    aput-object v3, v0, v4

    const/16 v3, 0x77

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "quotedblright"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x77

    aput-object v3, v0, v4

    const/16 v3, 0x78

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "guillemotright"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x78

    aput-object v3, v0, v4

    const/16 v3, 0x79

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ellipsis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x79

    aput-object v3, v0, v4

    const/16 v3, 0x7a

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "perthousand"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x7a

    aput-object v3, v0, v4

    const/16 v3, 0x7b

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "questiondown"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x7b

    aput-object v3, v0, v4

    const/16 v3, 0x7c

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "grave"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x7c

    aput-object v3, v0, v4

    const/16 v3, 0x7d

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "acute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x7d

    aput-object v3, v0, v4

    const/16 v3, 0x7e

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "circumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x7e

    aput-object v3, v0, v4

    const/16 v3, 0x7f

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "tilde"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x7f

    aput-object v3, v0, v4

    const/16 v3, 0x80

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "macron"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x80

    aput-object v3, v0, v4

    const/16 v3, 0x81

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "breve"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x81

    aput-object v3, v0, v4

    const/16 v3, 0x82

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dotaccent"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x82

    aput-object v3, v0, v4

    const/16 v3, 0x83

    .line 165
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x83

    aput-object v3, v0, v4

    const/16 v3, 0x84

    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ring"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x84

    aput-object v3, v0, v4

    const/16 v3, 0x85

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cedilla"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x85

    aput-object v3, v0, v4

    const/16 v3, 0x86

    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hungarumlaut"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x86

    aput-object v3, v0, v4

    const/16 v3, 0x87

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ogonek"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x87

    aput-object v3, v0, v4

    const/16 v3, 0x88

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "caron"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x88

    aput-object v3, v0, v4

    const/16 v3, 0x89

    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "emdash"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x89

    aput-object v3, v0, v4

    const/16 v3, 0x8a

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "AE"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8a

    aput-object v3, v0, v4

    const/16 v3, 0x8b

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ordfeminine"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8b

    aput-object v3, v0, v4

    const/16 v3, 0x8c

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Lslash"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8c

    aput-object v3, v0, v4

    const/16 v3, 0x8d

    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Oslash"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8d

    aput-object v3, v0, v4

    const/16 v3, 0x8e

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OE"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8e

    aput-object v3, v0, v4

    const/16 v3, 0x8f

    .line 177
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ordmasculine"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8f

    aput-object v3, v0, v4

    const/16 v3, 0x90

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ae"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x90

    aput-object v3, v0, v4

    const/16 v3, 0x91

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dotlessi"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x91

    aput-object v3, v0, v4

    const/16 v3, 0x92

    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lslash"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x92

    aput-object v3, v0, v4

    const/16 v3, 0x93

    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "oslash"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x93

    aput-object v3, v0, v4

    const/16 v3, 0x94

    .line 182
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "oe"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x94

    aput-object v3, v0, v4

    const/16 v3, 0x95

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "germandbls"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x95

    aput-object v3, v0, v4

    const/16 v3, 0x96

    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onesuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x96

    aput-object v3, v0, v4

    const/16 v3, 0x97

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "logicalnot"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x97

    aput-object v3, v0, v4

    const/16 v3, 0x98

    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mu"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x98

    aput-object v3, v0, v4

    const/16 v3, 0x99

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "trademark"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x99

    aput-object v3, v0, v4

    const/16 v3, 0x9a

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Eth"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9a

    aput-object v3, v0, v4

    const/16 v3, 0x9b

    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onehalf"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9b

    aput-object v3, v0, v4

    const/16 v3, 0x9c

    .line 190
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "plusminus"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9c

    aput-object v3, v0, v4

    const/16 v3, 0x9d

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Thorn"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9d

    aput-object v3, v0, v4

    const/16 v3, 0x9e

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onequarter"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9e

    aput-object v3, v0, v4

    const/16 v3, 0x9f

    .line 193
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "divide"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9f

    aput-object v3, v0, v4

    const/16 v3, 0xa0

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "brokenbar"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa0

    aput-object v3, v0, v4

    const/16 v3, 0xa1

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "degree"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa1

    aput-object v3, v0, v4

    const/16 v3, 0xa2

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "thorn"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa2

    aput-object v3, v0, v4

    const/16 v3, 0xa3

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "threequarters"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa3

    aput-object v3, v0, v4

    const/16 v3, 0xa4

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "twosuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa4

    aput-object v3, v0, v4

    const/16 v3, 0xa5

    .line 199
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "registered"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa5

    aput-object v3, v0, v4

    const/16 v3, 0xa6

    .line 200
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "minus"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa6

    aput-object v3, v0, v4

    const/16 v3, 0xa7

    .line 201
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "eth"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa7

    aput-object v3, v0, v4

    const/16 v3, 0xa8

    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "multiply"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa8

    aput-object v3, v0, v4

    const/16 v3, 0xa9

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "threesuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa9

    aput-object v3, v0, v4

    const/16 v3, 0xaa

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "copyright"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xaa

    aput-object v3, v0, v4

    const/16 v3, 0xab

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Aacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xab

    aput-object v3, v0, v4

    const/16 v3, 0xac

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Acircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xac

    aput-object v3, v0, v4

    const/16 v3, 0xad

    .line 207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Adieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xad

    aput-object v3, v0, v4

    const/16 v3, 0xae

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Agrave"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xae

    aput-object v3, v0, v4

    const/16 v3, 0xaf

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Aring"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xaf

    aput-object v3, v0, v4

    const/16 v3, 0xb0

    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Atilde"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb0

    aput-object v3, v0, v4

    const/16 v3, 0xb1

    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ccedilla"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb1

    aput-object v3, v0, v4

    const/16 v3, 0xb2

    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Eacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb2

    aput-object v3, v0, v4

    const/16 v3, 0xb3

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ecircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb3

    aput-object v3, v0, v4

    const/16 v3, 0xb4

    .line 214
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Edieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb4

    aput-object v3, v0, v4

    const/16 v3, 0xb5

    .line 215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Egrave"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb5

    aput-object v3, v0, v4

    const/16 v3, 0xb6

    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Iacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb6

    aput-object v3, v0, v4

    const/16 v3, 0xb7

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Icircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb7

    aput-object v3, v0, v4

    const/16 v3, 0xb8

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Idieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb8

    aput-object v3, v0, v4

    const/16 v3, 0xb9

    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Igrave"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb9

    aput-object v3, v0, v4

    const/16 v3, 0xba

    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ntilde"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xba

    aput-object v3, v0, v4

    const/16 v3, 0xbb

    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Oacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xbb

    aput-object v3, v0, v4

    const/16 v3, 0xbc

    .line 222
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ocircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xbc

    aput-object v3, v0, v4

    const/16 v3, 0xbd

    .line 223
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Odieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xbd

    aput-object v3, v0, v4

    const/16 v3, 0xbe

    .line 224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ograve"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xbe

    aput-object v3, v0, v4

    const/16 v3, 0xbf

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Otilde"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xbf

    aput-object v3, v0, v4

    const/16 v3, 0xc0

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Scaron"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc0

    aput-object v3, v0, v4

    const/16 v3, 0xc1

    .line 227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Uacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc1

    aput-object v3, v0, v4

    const/16 v3, 0xc2

    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ucircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc2

    aput-object v3, v0, v4

    const/16 v3, 0xc3

    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Udieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc3

    aput-object v3, v0, v4

    const/16 v3, 0xc4

    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ugrave"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc4

    aput-object v3, v0, v4

    const/16 v3, 0xc5

    .line 231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Yacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc5

    aput-object v3, v0, v4

    const/16 v3, 0xc6

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ydieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc6

    aput-object v3, v0, v4

    const/16 v3, 0xc7

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Zcaron"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc7

    aput-object v3, v0, v4

    const/16 v3, 0xc8

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "aacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc8

    aput-object v3, v0, v4

    const/16 v3, 0xc9

    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "acircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xc9

    aput-object v3, v0, v4

    const/16 v3, 0xca

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xca

    aput-object v3, v0, v4

    const/16 v3, 0xcb

    .line 237
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "agrave"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xcb

    aput-object v3, v0, v4

    const/16 v3, 0xcc

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "aring"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xcc

    aput-object v3, v0, v4

    const/16 v3, 0xcd

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "atilde"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xcd

    aput-object v3, v0, v4

    const/16 v3, 0xce

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ccedilla"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xce

    aput-object v3, v0, v4

    const/16 v3, 0xcf

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "eacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xcf

    aput-object v3, v0, v4

    const/16 v3, 0xd0

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ecircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd0

    aput-object v3, v0, v4

    const/16 v3, 0xd1

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "edieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd1

    aput-object v3, v0, v4

    const/16 v3, 0xd2

    .line 244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "egrave"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd2

    aput-object v3, v0, v4

    const/16 v3, 0xd3

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "iacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd3

    aput-object v3, v0, v4

    const/16 v3, 0xd4

    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "icircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd4

    aput-object v3, v0, v4

    const/16 v3, 0xd5

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "idieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd5

    aput-object v3, v0, v4

    const/16 v3, 0xd6

    .line 248
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "igrave"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd6

    aput-object v3, v0, v4

    const/16 v3, 0xd7

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ntilde"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd7

    aput-object v3, v0, v4

    const/16 v3, 0xd8

    .line 250
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "oacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd8

    aput-object v3, v0, v4

    const/16 v3, 0xd9

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ocircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xd9

    aput-object v3, v0, v4

    const/16 v3, 0xda

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "odieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xda

    aput-object v3, v0, v4

    const/16 v3, 0xdb

    .line 253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ograve"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xdb

    aput-object v3, v0, v4

    const/16 v3, 0xdc

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "otilde"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xdc

    aput-object v3, v0, v4

    const/16 v3, 0xdd

    .line 255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "scaron"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xdd

    aput-object v3, v0, v4

    const/16 v3, 0xde

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "uacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xde

    aput-object v3, v0, v4

    const/16 v3, 0xdf

    .line 257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ucircumflex"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xdf

    aput-object v3, v0, v4

    const/16 v3, 0xe0

    .line 258
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "udieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xe0

    aput-object v3, v0, v4

    const/16 v3, 0xe1

    .line 259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ugrave"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xe1

    aput-object v3, v0, v4

    const/16 v3, 0xe2

    .line 260
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yacute"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xe2

    aput-object v3, v0, v4

    const/16 v3, 0xe3

    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ydieresis"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xe3

    aput-object v3, v0, v4

    const/16 v3, 0xe4

    .line 262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "zcaron"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xe4

    aput-object v3, v0, v4

    sput-object v0, Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;->CFF_ISO_ADOBE_CHARSET_TABLE:[[Ljava/lang/Object;

    .line 279
    new-instance v3, Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;

    invoke-direct {v3}, Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;-><init>()V

    sput-object v3, Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;->INSTANCE:Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;

    array-length v3, v0

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    .line 284
    aget-object v6, v0, v4

    sget-object v7, Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;->INSTANCE:Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;

    add-int/lit8 v8, v5, 0x1

    .line 286
    aget-object v9, v6, v1

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v9, v6}, Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;->addSID(IILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/CFFCharset;-><init>(Z)V

    return-void
.end method

.method public static getInstance()Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;
    .locals 1

    sget-object v0, Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;->INSTANCE:Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;

    return-object v0
.end method
