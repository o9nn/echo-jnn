.class public final Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;
.super Lcom/tom_roush/fontbox/cff/CFFCharset;
.source "CFFExpertSubsetCharset.java"


# static fields
.field private static final CFF_EXPERT_SUBSET_CHARSET_TABLE:[[Ljava/lang/Object;

.field private static final CHAR_CODE:I = 0x0

.field private static final CHAR_NAME:I = 0x1

.field private static final INSTANCE:Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x57

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ".notdef"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "space"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v3, 0xe7

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dollaroldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/16 v3, 0xe8

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dollarsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/16 v3, 0xeb

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "parenleftsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const/16 v3, 0xec

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "parenrightsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/16 v3, 0xed

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "twodotenleader"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const/16 v3, 0xee

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onedotenleader"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const/16 v3, 0xd

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "comma"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v0, v5

    const/16 v4, 0xe

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "hyphen"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v0, v6

    const/16 v5, 0xf

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "period"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0xa

    aput-object v6, v0, v7

    const/16 v6, 0x63

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fraction"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v0, v7

    const/16 v6, 0xef

    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "zerooldstyle"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0xc

    aput-object v6, v0, v7

    const/16 v6, 0xf0

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "oneoldstyle"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v3

    const/16 v3, 0xf1

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "twooldstyle"

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v4

    const/16 v3, 0xf2

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "threeoldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v5

    const/16 v3, 0xf3

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fouroldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v0, v4

    const/16 v3, 0xf4

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fiveoldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v0, v4

    const/16 v3, 0xf5

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sixoldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v0, v4

    const/16 v3, 0xf6

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sevenoldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v0, v4

    const/16 v3, 0xf7

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "eightoldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v0, v4

    const/16 v3, 0xf8

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nineoldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v0, v4

    const/16 v3, 0x1b

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "colon"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x16

    aput-object v4, v0, v5

    const/16 v4, 0x1c

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "semicolon"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x17

    aput-object v5, v0, v6

    const/16 v5, 0xf9

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "commasuperior"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x18

    aput-object v5, v0, v6

    const/16 v5, 0xfa

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "threequartersemdash"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x19

    aput-object v5, v0, v6

    const/16 v5, 0xfb

    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "periodsuperior"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x1a

    aput-object v5, v0, v6

    const/16 v5, 0xfd

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "asuperior"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v3

    const/16 v3, 0xfe

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "bsuperior"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v4

    const/16 v3, 0xff

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "centsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1d

    aput-object v3, v0, v4

    const/16 v3, 0x100

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1e

    aput-object v3, v0, v4

    const/16 v3, 0x101

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "esuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1f

    aput-object v3, v0, v4

    const/16 v3, 0x102

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "isuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x20

    aput-object v3, v0, v4

    const/16 v3, 0x103

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x21

    aput-object v3, v0, v4

    const/16 v3, 0x104

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "msuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x22

    aput-object v3, v0, v4

    const/16 v3, 0x105

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x23

    aput-object v3, v0, v4

    const/16 v3, 0x106

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "osuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x24

    aput-object v3, v0, v4

    const/16 v3, 0x107

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "rsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x25

    aput-object v3, v0, v4

    const/16 v3, 0x108

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ssuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x26

    aput-object v3, v0, v4

    const/16 v3, 0x109

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "tsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x27

    aput-object v3, v0, v4

    const/16 v3, 0x10a

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ff"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x28

    aput-object v3, v0, v4

    const/16 v3, 0x6d

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fi"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x29

    aput-object v3, v0, v4

    const/16 v3, 0x6e

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fl"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2a

    aput-object v3, v0, v4

    const/16 v3, 0x10b

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ffi"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2b

    aput-object v3, v0, v4

    const/16 v3, 0x10c

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ffl"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2c

    aput-object v3, v0, v4

    const/16 v3, 0x10d

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "parenleftinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2d

    aput-object v3, v0, v4

    const/16 v3, 0x10e

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "parenrightinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2e

    aput-object v3, v0, v4

    const/16 v3, 0x110

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hyphensuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2f

    aput-object v3, v0, v4

    const/16 v3, 0x12c

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "colonmonetary"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x30

    aput-object v3, v0, v4

    const/16 v3, 0x12d

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onefitted"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x31

    aput-object v3, v0, v4

    const/16 v3, 0x12e

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "rupiah"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x32

    aput-object v3, v0, v4

    const/16 v3, 0x131

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "centoldstyle"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x33

    aput-object v3, v0, v4

    const/16 v3, 0x13a

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "figuredash"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x34

    aput-object v3, v0, v4

    const/16 v3, 0x13b

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hypheninferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x35

    aput-object v3, v0, v4

    const/16 v3, 0x9e

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onequarter"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x36

    aput-object v3, v0, v4

    const/16 v3, 0x9b

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onehalf"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x37

    aput-object v3, v0, v4

    const/16 v3, 0xa3

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "threequarters"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x38

    aput-object v3, v0, v4

    const/16 v3, 0x140

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "oneeighth"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x39

    aput-object v3, v0, v4

    const/16 v3, 0x141

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "threeeighths"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3a

    aput-object v3, v0, v4

    const/16 v3, 0x142

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fiveeighths"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3b

    aput-object v3, v0, v4

    const/16 v3, 0x143

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "seveneighths"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3c

    aput-object v3, v0, v4

    const/16 v3, 0x144

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onethird"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3d

    aput-object v3, v0, v4

    const/16 v3, 0x145

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "twothirds"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3e

    aput-object v3, v0, v4

    const/16 v3, 0x146

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "zerosuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3f

    aput-object v3, v0, v4

    const/16 v3, 0x96

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "onesuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x40

    aput-object v3, v0, v4

    const/16 v3, 0xa4

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "twosuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x41

    aput-object v3, v0, v4

    const/16 v3, 0xa9

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "threesuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x42

    aput-object v3, v0, v4

    const/16 v3, 0x147

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "foursuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x43

    aput-object v3, v0, v4

    const/16 v3, 0x148

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fivesuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x44

    aput-object v3, v0, v4

    const/16 v3, 0x149

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sixsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x45

    aput-object v3, v0, v4

    const/16 v3, 0x14a

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sevensuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x46

    aput-object v3, v0, v4

    const/16 v3, 0x14b

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "eightsuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x47

    aput-object v3, v0, v4

    const/16 v3, 0x14c

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ninesuperior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x48

    aput-object v3, v0, v4

    const/16 v3, 0x14d

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "zeroinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x49

    aput-object v3, v0, v4

    const/16 v3, 0x14e

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "oneinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4a

    aput-object v3, v0, v4

    const/16 v3, 0x14f

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "twoinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4b

    aput-object v3, v0, v4

    const/16 v3, 0x150

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "threeinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4c

    aput-object v3, v0, v4

    const/16 v3, 0x151

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fourinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4d

    aput-object v3, v0, v4

    const/16 v3, 0x152

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fiveinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4e

    aput-object v3, v0, v4

    const/16 v3, 0x153

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sixinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x4f

    aput-object v3, v0, v4

    const/16 v3, 0x154

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "seveninferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x50

    aput-object v3, v0, v4

    const/16 v3, 0x155

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "eightinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x51

    aput-object v3, v0, v4

    const/16 v3, 0x156

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nineinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x52

    aput-object v3, v0, v4

    const/16 v3, 0x157

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "centinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x53

    aput-object v3, v0, v4

    const/16 v3, 0x158

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dollarinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x54

    aput-object v3, v0, v4

    const/16 v3, 0x159

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "periodinferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x55

    aput-object v3, v0, v4

    const/16 v3, 0x15a

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "commainferior"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x56

    aput-object v3, v0, v4

    sput-object v0, Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;->CFF_EXPERT_SUBSET_CHARSET_TABLE:[[Ljava/lang/Object;

    .line 138
    new-instance v3, Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;

    invoke-direct {v3}, Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;-><init>()V

    sput-object v3, Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;->INSTANCE:Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;

    array-length v3, v0

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    .line 143
    aget-object v6, v0, v4

    sget-object v7, Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;->INSTANCE:Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;

    add-int/lit8 v8, v5, 0x1

    .line 145
    aget-object v9, v6, v1

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v9, v6}, Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;->addSID(IILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/CFFCharset;-><init>(Z)V

    return-void
.end method

.method public static getInstance()Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;
    .locals 1

    sget-object v0, Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;->INSTANCE:Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;

    return-object v0
.end method
