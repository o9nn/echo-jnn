.class public final Lcom/tom_roush/fontbox/cff/CFFExpertCharset;
.super Lcom/tom_roush/fontbox/cff/CFFCharset;
.source "CFFExpertCharset.java"


# static fields
.field private static final CFF_EXPERT_CHARSET_TABLE:[[Ljava/lang/Object;

.field private static final CHAR_CODE:I = 0x0

.field private static final CHAR_NAME:I = 0x1

.field private static final INSTANCE:Lcom/tom_roush/fontbox/cff/CFFExpertCharset;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xa6

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ".notdef"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "space"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v3, 0xe5

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "exclamsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/16 v3, 0xe6

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Hungarumlautsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/16 v3, 0xe7

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dollaroldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const/16 v3, 0xe8

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dollarsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/16 v3, 0xe9

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ampersandsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const/16 v3, 0xea

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Acutesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const/16 v3, 0xeb

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "parenleftsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const/16 v3, 0xec

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "parenrightsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const/16 v3, 0xed

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "twodotenleader"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const/16 v3, 0xee

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onedotenleader"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v3, 0xd

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "comma"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0xc

    aput-object v4, v0, v5

    const/16 v4, 0xe

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "hyphen"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v3

    const/16 v3, 0xf

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "period"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x63

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "fraction"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v3

    const/16 v3, 0xef

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "zerooldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x10

    aput-object v3, v0, v5

    const/16 v3, 0xf0

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "oneoldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x11

    aput-object v3, v0, v5

    const/16 v3, 0xf1

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "twooldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x12

    aput-object v3, v0, v5

    const/16 v3, 0xf2

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "threeoldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x13

    aput-object v3, v0, v5

    const/16 v3, 0xf3

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "fouroldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x14

    aput-object v3, v0, v5

    const/16 v3, 0xf4

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "fiveoldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x15

    aput-object v3, v0, v5

    const/16 v3, 0xf5

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "sixoldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x16

    aput-object v3, v0, v5

    const/16 v3, 0xf6

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "sevenoldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x17

    aput-object v3, v0, v5

    const/16 v3, 0xf7

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "eightoldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x18

    aput-object v3, v0, v5

    const/16 v3, 0xf8

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "nineoldstyle"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x19

    aput-object v3, v0, v5

    const/16 v3, 0x1b

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "colon"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x1a

    aput-object v5, v0, v6

    const/16 v5, 0x1c

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "semicolon"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v3

    const/16 v3, 0xf9

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "commasuperior"

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v5

    const/16 v3, 0xfa

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "threequartersemdash"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x1d

    aput-object v3, v0, v5

    const/16 v3, 0xfb

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "periodsuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x1e

    aput-object v3, v0, v5

    const/16 v3, 0xfc

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "questionsmall"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x1f

    aput-object v3, v0, v5

    const/16 v3, 0xfd

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "asuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x20

    aput-object v3, v0, v5

    const/16 v3, 0xfe

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "bsuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x21

    aput-object v3, v0, v5

    const/16 v3, 0xff

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "centsuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x22

    aput-object v3, v0, v5

    const/16 v3, 0x100

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "dsuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x23

    aput-object v3, v0, v5

    const/16 v3, 0x101

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "esuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x24

    aput-object v3, v0, v5

    const/16 v3, 0x102

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "isuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x25

    aput-object v3, v0, v5

    const/16 v3, 0x103

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "lsuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x26

    aput-object v3, v0, v5

    const/16 v3, 0x104

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "msuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x27

    aput-object v3, v0, v5

    const/16 v3, 0x105

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "nsuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x28

    aput-object v3, v0, v5

    const/16 v3, 0x106

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "osuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x29

    aput-object v3, v0, v5

    const/16 v3, 0x107

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "rsuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x2a

    aput-object v3, v0, v5

    const/16 v3, 0x108

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "ssuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x2b

    aput-object v3, v0, v5

    const/16 v3, 0x109

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "tsuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x2c

    aput-object v3, v0, v5

    const/16 v3, 0x10a

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "ff"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x2d

    aput-object v3, v0, v5

    const/16 v3, 0x6d

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "fi"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x2e

    aput-object v5, v0, v6

    const/16 v5, 0x6e

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fl"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x2f

    aput-object v6, v0, v7

    const/16 v6, 0x10b

    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ffi"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x30

    aput-object v6, v0, v7

    const/16 v6, 0x10c

    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ffl"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x31

    aput-object v6, v0, v7

    const/16 v6, 0x10d

    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "parenleftinferior"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x32

    aput-object v6, v0, v7

    const/16 v6, 0x10e

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "parenrightinferior"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x33

    aput-object v6, v0, v7

    const/16 v6, 0x10f

    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Circumflexsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x34

    aput-object v6, v0, v7

    const/16 v6, 0x110

    .line 86
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "hyphensuperior"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x35

    aput-object v6, v0, v7

    const/16 v6, 0x111

    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Gravesmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x36

    aput-object v6, v0, v7

    const/16 v6, 0x112

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Asmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x37

    aput-object v6, v0, v7

    const/16 v6, 0x113

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Bsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x38

    aput-object v6, v0, v7

    const/16 v6, 0x114

    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Csmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x39

    aput-object v6, v0, v7

    const/16 v6, 0x115

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Dsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x3a

    aput-object v6, v0, v7

    const/16 v6, 0x116

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Esmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x3b

    aput-object v6, v0, v7

    const/16 v6, 0x117

    .line 93
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Fsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x3c

    aput-object v6, v0, v7

    const/16 v6, 0x118

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Gsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x3d

    aput-object v6, v0, v7

    const/16 v6, 0x119

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Hsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x3e

    aput-object v6, v0, v7

    const/16 v6, 0x11a

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Ismall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x3f

    aput-object v6, v0, v7

    const/16 v6, 0x11b

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Jsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x40

    aput-object v6, v0, v7

    const/16 v6, 0x11c

    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Ksmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x41

    aput-object v6, v0, v7

    const/16 v6, 0x11d

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Lsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x42

    aput-object v6, v0, v7

    const/16 v6, 0x11e

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Msmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x43

    aput-object v6, v0, v7

    const/16 v6, 0x11f

    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Nsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x44

    aput-object v6, v0, v7

    const/16 v6, 0x120

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Osmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x45

    aput-object v6, v0, v7

    const/16 v6, 0x121

    .line 103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Psmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x46

    aput-object v6, v0, v7

    const/16 v6, 0x122

    .line 104
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Qsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x47

    aput-object v6, v0, v7

    const/16 v6, 0x123

    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Rsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x48

    aput-object v6, v0, v7

    const/16 v6, 0x124

    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Ssmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x49

    aput-object v6, v0, v7

    const/16 v6, 0x125

    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Tsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x4a

    aput-object v6, v0, v7

    const/16 v6, 0x126

    .line 108
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Usmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x4b

    aput-object v6, v0, v7

    const/16 v6, 0x127

    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Vsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x4c

    aput-object v6, v0, v7

    const/16 v6, 0x128

    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Wsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x4d

    aput-object v6, v0, v7

    const/16 v6, 0x129

    .line 111
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Xsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x4e

    aput-object v6, v0, v7

    const/16 v6, 0x12a

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Ysmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x4f

    aput-object v6, v0, v7

    const/16 v6, 0x12b

    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Zsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x50

    aput-object v6, v0, v7

    const/16 v6, 0x12c

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "colonmonetary"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x51

    aput-object v6, v0, v7

    const/16 v6, 0x12d

    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "onefitted"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x52

    aput-object v6, v0, v7

    const/16 v6, 0x12e

    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "rupiah"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x53

    aput-object v6, v0, v7

    const/16 v6, 0x12f

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Tildesmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x54

    aput-object v6, v0, v7

    const/16 v6, 0x130

    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "exclamdownsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x55

    aput-object v6, v0, v7

    const/16 v6, 0x131

    .line 119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "centoldstyle"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x56

    aput-object v6, v0, v7

    const/16 v6, 0x132

    .line 120
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Lslashsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x57

    aput-object v6, v0, v7

    const/16 v6, 0x133

    .line 121
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Scaronsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x58

    aput-object v6, v0, v7

    const/16 v6, 0x134

    .line 122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Zcaronsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x59

    aput-object v6, v0, v7

    const/16 v6, 0x135

    .line 123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Dieresissmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x5a

    aput-object v6, v0, v7

    const/16 v6, 0x136

    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Brevesmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x5b

    aput-object v6, v0, v7

    const/16 v6, 0x137

    .line 125
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Caronsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x5c

    aput-object v6, v0, v7

    const/16 v6, 0x138

    .line 126
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Dotaccentsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x5d

    aput-object v6, v0, v7

    const/16 v6, 0x139

    .line 127
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Macronsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x5e

    aput-object v6, v0, v7

    const/16 v6, 0x13a

    .line 128
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "figuredash"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x5f

    aput-object v6, v0, v7

    const/16 v6, 0x13b

    .line 129
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "hypheninferior"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x60

    aput-object v6, v0, v7

    const/16 v6, 0x13c

    .line 130
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Ogoneksmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x61

    aput-object v6, v0, v7

    const/16 v6, 0x13d

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Ringsmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x62

    aput-object v6, v0, v7

    const/16 v6, 0x13e

    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Cedillasmall"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v4

    const/16 v4, 0x9e

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "onequarter"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x64

    aput-object v6, v0, v7

    const/16 v6, 0x9b

    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "onehalf"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x65

    aput-object v7, v0, v8

    const/16 v7, 0xa3

    .line 135
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "threequarters"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x66

    aput-object v8, v0, v9

    const/16 v8, 0x13f

    .line 136
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "questiondownsmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x67

    aput-object v8, v0, v9

    const/16 v8, 0x140

    .line 137
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "oneeighth"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x68

    aput-object v8, v0, v9

    const/16 v8, 0x141

    .line 138
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "threeeighths"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x69

    aput-object v8, v0, v9

    const/16 v8, 0x142

    .line 139
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "fiveeighths"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x6a

    aput-object v8, v0, v9

    const/16 v8, 0x143

    .line 140
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "seveneighths"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x6b

    aput-object v8, v0, v9

    const/16 v8, 0x144

    .line 141
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "onethird"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x6c

    aput-object v8, v0, v9

    const/16 v8, 0x145

    .line 142
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "twothirds"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v0, v3

    const/16 v3, 0x146

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "zerosuperior"

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v5

    const/16 v3, 0x96

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "onesuperior"

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v8, 0x6f

    aput-object v5, v0, v8

    const/16 v5, 0xa4

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "twosuperior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x70

    aput-object v8, v0, v9

    const/16 v8, 0xa9

    .line 146
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "threesuperior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x71

    aput-object v8, v0, v9

    const/16 v8, 0x147

    .line 147
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "foursuperior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x72

    aput-object v8, v0, v9

    const/16 v8, 0x148

    .line 148
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "fivesuperior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x73

    aput-object v8, v0, v9

    const/16 v8, 0x149

    .line 149
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "sixsuperior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x74

    aput-object v8, v0, v9

    const/16 v8, 0x14a

    .line 150
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "sevensuperior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x75

    aput-object v8, v0, v9

    const/16 v8, 0x14b

    .line 151
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "eightsuperior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x76

    aput-object v8, v0, v9

    const/16 v8, 0x14c

    .line 152
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "ninesuperior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x77

    aput-object v8, v0, v9

    const/16 v8, 0x14d

    .line 153
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "zeroinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x78

    aput-object v8, v0, v9

    const/16 v8, 0x14e

    .line 154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "oneinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x79

    aput-object v8, v0, v9

    const/16 v8, 0x14f

    .line 155
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "twoinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x7a

    aput-object v8, v0, v9

    const/16 v8, 0x150

    .line 156
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "threeinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x7b

    aput-object v8, v0, v9

    const/16 v8, 0x151

    .line 157
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "fourinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x7c

    aput-object v8, v0, v9

    const/16 v8, 0x152

    .line 158
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "fiveinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x7d

    aput-object v8, v0, v9

    const/16 v8, 0x153

    .line 159
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "sixinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x7e

    aput-object v8, v0, v9

    const/16 v8, 0x154

    .line 160
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "seveninferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x7f

    aput-object v8, v0, v9

    const/16 v8, 0x155

    .line 161
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "eightinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x80

    aput-object v8, v0, v9

    const/16 v8, 0x156

    .line 162
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "nineinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x81

    aput-object v8, v0, v9

    const/16 v8, 0x157

    .line 163
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "centinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x82

    aput-object v8, v0, v9

    const/16 v8, 0x158

    .line 164
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "dollarinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x83

    aput-object v8, v0, v9

    const/16 v8, 0x159

    .line 165
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "periodinferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x84

    aput-object v8, v0, v9

    const/16 v8, 0x15a

    .line 166
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "commainferior"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x85

    aput-object v8, v0, v9

    const/16 v8, 0x15b

    .line 167
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Agravesmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x86

    aput-object v8, v0, v9

    const/16 v8, 0x15c

    .line 168
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Aacutesmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x87

    aput-object v8, v0, v9

    const/16 v8, 0x15d

    .line 169
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Acircumflexsmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x88

    aput-object v8, v0, v9

    const/16 v8, 0x15e

    .line 170
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Atildesmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x89

    aput-object v8, v0, v9

    const/16 v8, 0x15f

    .line 171
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Adieresissmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x8a

    aput-object v8, v0, v9

    const/16 v8, 0x160

    .line 172
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Aringsmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x8b

    aput-object v8, v0, v9

    const/16 v8, 0x161

    .line 173
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "AEsmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x8c

    aput-object v8, v0, v9

    const/16 v8, 0x162

    .line 174
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Ccedillasmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x8d

    aput-object v8, v0, v9

    const/16 v8, 0x163

    .line 175
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Egravesmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x8e

    aput-object v8, v0, v9

    const/16 v8, 0x164

    .line 176
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Eacutesmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x8f

    aput-object v8, v0, v9

    const/16 v8, 0x165

    .line 177
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Ecircumflexsmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x90

    aput-object v8, v0, v9

    const/16 v8, 0x166

    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Edieresissmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x91

    aput-object v8, v0, v9

    const/16 v8, 0x167

    .line 179
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Igravesmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x92

    aput-object v8, v0, v9

    const/16 v8, 0x168

    .line 180
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Iacutesmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x93

    aput-object v8, v0, v9

    const/16 v8, 0x169

    .line 181
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Icircumflexsmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x94

    aput-object v8, v0, v9

    const/16 v8, 0x16a

    .line 182
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Idieresissmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x95

    aput-object v8, v0, v9

    const/16 v8, 0x16b

    .line 183
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Ethsmall"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v0, v3

    const/16 v3, 0x16c

    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "Ntildesmall"

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v8, 0x97

    aput-object v3, v0, v8

    const/16 v3, 0x16d

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "Ogravesmall"

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v8, 0x98

    aput-object v3, v0, v8

    const/16 v3, 0x16e

    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "Oacutesmall"

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v8, 0x99

    aput-object v3, v0, v8

    const/16 v3, 0x16f

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "Ocircumflexsmall"

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v8, 0x9a

    aput-object v3, v0, v8

    const/16 v3, 0x170

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "Otildesmall"

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v6

    const/16 v3, 0x171

    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "Odieresissmall"

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v6, 0x9c

    aput-object v3, v0, v6

    const/16 v3, 0x172

    .line 190
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "OEsmall"

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v6, 0x9d

    aput-object v3, v0, v6

    const/16 v3, 0x173

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "Oslashsmall"

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v4

    const/16 v3, 0x174

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ugravesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9f

    aput-object v3, v0, v4

    const/16 v3, 0x175

    .line 193
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Uacutesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa0

    aput-object v3, v0, v4

    const/16 v3, 0x176

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ucircumflexsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa1

    aput-object v3, v0, v4

    const/16 v3, 0x177

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Udieresissmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa2

    aput-object v3, v0, v4

    const/16 v3, 0x178

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Yacutesmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x179

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Thornsmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v5

    const/16 v3, 0x17a

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Ydieresissmall"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa5

    aput-object v3, v0, v4

    sput-object v0, Lcom/tom_roush/fontbox/cff/CFFExpertCharset;->CFF_EXPERT_CHARSET_TABLE:[[Ljava/lang/Object;

    .line 215
    new-instance v3, Lcom/tom_roush/fontbox/cff/CFFExpertCharset;

    invoke-direct {v3}, Lcom/tom_roush/fontbox/cff/CFFExpertCharset;-><init>()V

    sput-object v3, Lcom/tom_roush/fontbox/cff/CFFExpertCharset;->INSTANCE:Lcom/tom_roush/fontbox/cff/CFFExpertCharset;

    array-length v3, v0

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    .line 220
    aget-object v6, v0, v4

    sget-object v7, Lcom/tom_roush/fontbox/cff/CFFExpertCharset;->INSTANCE:Lcom/tom_roush/fontbox/cff/CFFExpertCharset;

    add-int/lit8 v8, v5, 0x1

    .line 222
    aget-object v9, v6, v1

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v9, v6}, Lcom/tom_roush/fontbox/cff/CFFExpertCharset;->addSID(IILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/CFFCharset;-><init>(Z)V

    return-void
.end method

.method public static getInstance()Lcom/tom_roush/fontbox/cff/CFFExpertCharset;
    .locals 1

    sget-object v0, Lcom/tom_roush/fontbox/cff/CFFExpertCharset;->INSTANCE:Lcom/tom_roush/fontbox/cff/CFFExpertCharset;

    return-object v0
.end method
