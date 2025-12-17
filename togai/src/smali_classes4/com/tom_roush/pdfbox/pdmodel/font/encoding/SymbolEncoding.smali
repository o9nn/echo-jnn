.class public Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;
.super Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
.source "SymbolEncoding.java"


# static fields
.field public static final INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;

.field private static final SYMBOL_ENCODING_TABLE:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0xbd

    new-array v1, v0, [[Ljava/lang/Object;

    const/16 v2, 0x41

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Alpha"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x42

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Beta"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/16 v4, 0x43

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Chi"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/16 v5, 0x44

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Delta"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/16 v6, 0x45

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Epsilon"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v1, v8

    const/16 v7, 0x48

    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Eta"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/16 v8, 0xa0

    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Euro"

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v1, v10

    const/16 v9, 0x47

    .line 38
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Gamma"

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const/16 v10, 0xc1

    .line 39
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Ifraktur"

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v1, v11

    const/16 v10, 0x49

    .line 40
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "Iota"

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x9

    aput-object v11, v1, v12

    const/16 v11, 0x4b

    .line 41
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "Kappa"

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v1, v13

    const/16 v12, 0x4c

    .line 42
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Lambda"

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v1, v14

    const/16 v13, 0x4d

    .line 43
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Mu"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0xc

    aput-object v14, v1, v15

    const/16 v14, 0x4e

    .line 44
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "Nu"

    filled-new-array {v15, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v15, 0xd

    aput-object v8, v1, v15

    const/16 v8, 0x57

    .line 45
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "Omega"

    filled-new-array {v15, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v15, 0xe

    aput-object v8, v1, v15

    const/16 v8, 0x4f

    .line 46
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "Omicron"

    filled-new-array {v15, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v15, 0xf

    aput-object v8, v1, v15

    const/16 v8, 0x46

    .line 47
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "Phi"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v1, v15

    const/16 v14, 0x50

    .line 48
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "Pi"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v1, v15

    const/16 v14, 0x59

    .line 49
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "Psi"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x12

    aput-object v14, v1, v15

    const/16 v14, 0xc2

    .line 50
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Rfraktur"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x13

    aput-object v14, v1, v15

    const/16 v14, 0x52

    .line 51
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "Rho"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x14

    aput-object v14, v1, v15

    const/16 v14, 0x53

    .line 52
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "Sigma"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x15

    aput-object v14, v1, v15

    const/16 v14, 0x54

    .line 53
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "Tau"

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x16

    aput-object v14, v1, v15

    const/16 v14, 0x51

    .line 54
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Theta"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x17

    aput-object v14, v1, v15

    const/16 v14, 0x55

    .line 55
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Upsilon"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x18

    aput-object v14, v1, v15

    const/16 v14, 0xa1

    .line 56
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Upsilon1"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x19

    aput-object v14, v1, v15

    const/16 v14, 0x58

    .line 57
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Xi"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1a

    aput-object v14, v1, v15

    const/16 v14, 0x5a

    .line 58
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Zeta"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1b

    aput-object v14, v1, v15

    const/16 v14, 0xc0

    .line 59
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "aleph"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1c

    aput-object v14, v1, v15

    const/16 v14, 0x61

    .line 60
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "alpha"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1d

    aput-object v14, v1, v15

    const/16 v14, 0x26

    .line 61
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "ampersand"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1e

    aput-object v14, v1, v15

    const/16 v14, 0xd0

    .line 62
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "angle"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x1f

    aput-object v14, v1, v15

    const/16 v14, 0xe1

    .line 63
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "angleleft"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x20

    aput-object v14, v1, v15

    const/16 v14, 0xf1

    .line 64
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "angleright"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x21

    aput-object v14, v1, v15

    const/16 v14, 0xbb

    .line 65
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "approxequal"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x22

    aput-object v14, v1, v15

    const/16 v14, 0xab

    .line 66
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowboth"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x23

    aput-object v14, v1, v15

    const/16 v14, 0xdb

    .line 67
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowdblboth"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x24

    aput-object v14, v1, v15

    const/16 v14, 0xdf

    .line 68
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowdbldown"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x25

    aput-object v14, v1, v15

    const/16 v14, 0xdc

    .line 69
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowdblleft"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x26

    aput-object v14, v1, v15

    const/16 v14, 0xde

    .line 70
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowdblright"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x27

    aput-object v14, v1, v15

    const/16 v14, 0xdd

    .line 71
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowdblup"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x28

    aput-object v14, v1, v15

    const/16 v14, 0xaf

    .line 72
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowdown"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x29

    aput-object v14, v1, v15

    const/16 v14, 0xbe

    .line 73
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowhorizex"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2a

    aput-object v14, v1, v15

    const/16 v14, 0xac

    .line 74
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowleft"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2b

    aput-object v14, v1, v15

    const/16 v14, 0xae

    .line 75
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowright"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2c

    aput-object v14, v1, v15

    const/16 v14, 0xad

    .line 76
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "arrowup"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0x2d

    aput-object v14, v1, v15

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "arrowvertex"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x2e

    aput-object v0, v1, v14

    const/16 v0, 0x2a

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "asteriskmath"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x2f

    aput-object v0, v1, v14

    const/16 v0, 0x7c

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bar"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x30

    aput-object v0, v1, v14

    const/16 v0, 0x62

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "beta"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x31

    aput-object v0, v1, v14

    const/16 v0, 0x7b

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "braceleft"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x32

    aput-object v0, v1, v14

    const/16 v0, 0x7d

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "braceright"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x33

    aput-object v0, v1, v14

    const/16 v0, 0xec

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracelefttp"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x34

    aput-object v0, v1, v14

    const/16 v0, 0xed

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "braceleftmid"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x35

    aput-object v0, v1, v14

    const/16 v0, 0xee

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "braceleftbt"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x36

    aput-object v0, v1, v14

    const/16 v0, 0xfc

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracerighttp"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x37

    aput-object v0, v1, v14

    const/16 v0, 0xfd

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracerightmid"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x38

    aput-object v0, v1, v14

    const/16 v0, 0xfe

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracerightbt"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x39

    aput-object v0, v1, v14

    const/16 v0, 0xef

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "braceex"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x3a

    aput-object v0, v1, v14

    const/16 v0, 0x5b

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracketleft"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x3b

    aput-object v0, v1, v14

    const/16 v0, 0x5d

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracketright"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x3c

    aput-object v0, v1, v14

    const/16 v0, 0xe9

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracketlefttp"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x3d

    aput-object v0, v1, v14

    const/16 v0, 0xea

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracketleftex"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x3e

    aput-object v0, v1, v14

    const/16 v0, 0xeb

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracketleftbt"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x3f

    aput-object v0, v1, v14

    const/16 v0, 0xf9

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracketrighttp"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0x40

    aput-object v0, v1, v14

    const/16 v0, 0xfa

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "bracketrightex"

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0xfb

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "bracketrightbt"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    const/16 v0, 0xb7

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "bullet"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v4

    const/16 v0, 0xbf

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "carriagereturn"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v5

    const/16 v0, 0x63

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "chi"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v6

    const/16 v0, 0xc4

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "circlemultiply"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v8

    const/16 v0, 0xc5

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "circleplus"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v9

    const/16 v0, 0xa7

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "club"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v7

    const/16 v0, 0x3a

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "colon"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v10

    const/16 v0, 0x2c

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "comma"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4a

    aput-object v0, v1, v2

    const/16 v0, 0x40

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "congruent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v11

    const/16 v0, 0xe3

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "copyrightsans"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v12

    const/16 v0, 0xd3

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "copyrightserif"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v13

    const/16 v0, 0xb0

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "degree"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4e

    aput-object v0, v1, v2

    const/16 v0, 0x64

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "delta"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4f

    aput-object v0, v1, v2

    const/16 v0, 0xa8

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "diamond"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x50

    aput-object v0, v1, v2

    const/16 v0, 0xb8

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "divide"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, v1, v2

    const/16 v0, 0xd7

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "dotmath"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, v1, v2

    const/16 v0, 0x38

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "eight"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x53

    aput-object v0, v1, v2

    const/16 v0, 0xce

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "element"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x54

    aput-object v0, v1, v2

    const/16 v0, 0xbc

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ellipsis"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x55

    aput-object v0, v1, v2

    const/16 v0, 0xc6

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "emptyset"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x56

    aput-object v0, v1, v2

    const/16 v0, 0x65

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "epsilon"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x57

    aput-object v0, v1, v2

    const/16 v0, 0x3d

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "equal"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x58

    aput-object v0, v1, v2

    const/16 v0, 0xba

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "equivalence"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x59

    aput-object v0, v1, v2

    const/16 v0, 0x68

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "eta"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5a

    aput-object v0, v1, v2

    const/16 v0, 0x21

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "exclam"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5b

    aput-object v0, v1, v2

    const/16 v0, 0x24

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "existential"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, v1, v2

    const/16 v0, 0x35

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "five"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, v1, v2

    const/16 v0, 0xa6

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "florin"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5e

    aput-object v0, v1, v2

    const/16 v0, 0x34

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "four"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5f

    aput-object v0, v1, v2

    const/16 v0, 0xa4

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "fraction"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x60

    aput-object v0, v1, v2

    const/16 v0, 0x67

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "gamma"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x61

    aput-object v0, v1, v2

    const/16 v0, 0xd1

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "gradient"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x62

    aput-object v0, v1, v2

    const/16 v0, 0x3e

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "greater"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x63

    aput-object v0, v1, v2

    const/16 v0, 0xb3

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "greaterequal"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x64

    aput-object v0, v1, v2

    const/16 v0, 0xa9

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "heart"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x65

    aput-object v0, v1, v2

    const/16 v0, 0xa5

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "infinity"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x66

    aput-object v0, v1, v2

    const/16 v0, 0xf2

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "integral"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x67

    aput-object v0, v1, v2

    const/16 v0, 0xf3

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "integraltp"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x68

    aput-object v0, v1, v2

    const/16 v0, 0xf4

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "integralex"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x69

    aput-object v0, v1, v2

    const/16 v0, 0xf5

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "integralbt"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6a

    aput-object v0, v1, v2

    const/16 v0, 0xc7

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "intersection"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6b

    aput-object v0, v1, v2

    const/16 v0, 0x69

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "iota"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6c

    aput-object v0, v1, v2

    const/16 v0, 0x6b

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "kappa"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6d

    aput-object v0, v1, v2

    const/16 v0, 0x6c

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "lambda"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6e

    aput-object v0, v1, v2

    const/16 v0, 0x3c

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "less"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x6f

    aput-object v0, v1, v2

    const/16 v0, 0xa3

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "lessequal"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x70

    aput-object v0, v1, v2

    const/16 v0, 0xd9

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "logicaland"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x71

    aput-object v0, v1, v2

    const/16 v0, 0xd8

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "logicalnot"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x72

    aput-object v0, v1, v2

    const/16 v0, 0xda

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "logicalor"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x73

    aput-object v0, v1, v2

    const/16 v0, 0xe0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "lozenge"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x74

    aput-object v0, v1, v2

    const/16 v0, 0x2d

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "minus"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x75

    aput-object v0, v1, v2

    const/16 v0, 0xa2

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "minute"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x76

    aput-object v0, v1, v2

    const/16 v0, 0x6d

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "mu"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x77

    aput-object v0, v1, v2

    const/16 v0, 0xb4

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "multiply"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x78

    aput-object v0, v1, v2

    const/16 v0, 0x39

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "nine"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x79

    aput-object v0, v1, v2

    const/16 v0, 0xcf

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "notelement"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7a

    aput-object v0, v1, v2

    const/16 v0, 0xb9

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "notequal"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7b

    aput-object v0, v1, v2

    const/16 v0, 0xcb

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "notsubset"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7c

    aput-object v0, v1, v2

    const/16 v0, 0x6e

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "nu"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7d

    aput-object v0, v1, v2

    const/16 v0, 0x23

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "numbersign"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7e

    aput-object v0, v1, v2

    const/16 v0, 0x77

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "omega"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7f

    aput-object v0, v1, v2

    const/16 v0, 0x76

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "omega1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x80

    aput-object v0, v1, v2

    const/16 v0, 0x6f

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "omicron"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x81

    aput-object v0, v1, v2

    const/16 v0, 0x31

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "one"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x82

    aput-object v0, v1, v2

    const/16 v0, 0x28

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenleft"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x83

    aput-object v0, v1, v2

    const/16 v0, 0x29

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenright"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x84

    aput-object v0, v1, v2

    const/16 v0, 0xe6

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenlefttp"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x85

    aput-object v0, v1, v2

    const/16 v0, 0xe7

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenleftex"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x86

    aput-object v0, v1, v2

    const/16 v0, 0xe8

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenleftbt"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x87

    aput-object v0, v1, v2

    const/16 v0, 0xf6

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenrighttp"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x88

    aput-object v0, v1, v2

    const/16 v0, 0xf7

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenrightex"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x89

    aput-object v0, v1, v2

    const/16 v0, 0xf8

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "parenrightbt"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8a

    aput-object v0, v1, v2

    const/16 v0, 0xb6

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "partialdiff"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8b

    aput-object v0, v1, v2

    const/16 v0, 0x25

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "percent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8c

    aput-object v0, v1, v2

    const/16 v0, 0x2e

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "period"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8d

    aput-object v0, v1, v2

    const/16 v0, 0x5e

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "perpendicular"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8e

    aput-object v0, v1, v2

    const/16 v0, 0x66

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "phi"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x8f

    aput-object v0, v1, v2

    const/16 v0, 0x6a

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "phi1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x90

    aput-object v0, v1, v2

    const/16 v0, 0x70

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "pi"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x91

    aput-object v0, v1, v2

    const/16 v0, 0x2b

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "plus"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x92

    aput-object v0, v1, v2

    const/16 v0, 0xb1

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "plusminus"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x93

    aput-object v0, v1, v2

    const/16 v0, 0xd5

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "product"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x94

    aput-object v0, v1, v2

    const/16 v0, 0xcc

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "propersubset"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x95

    aput-object v0, v1, v2

    const/16 v0, 0xc9

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "propersuperset"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x96

    aput-object v0, v1, v2

    const/16 v0, 0xb5

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "proportional"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x97

    aput-object v0, v1, v2

    const/16 v0, 0x79

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "psi"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x98

    aput-object v0, v1, v2

    const/16 v0, 0x3f

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "question"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x99

    aput-object v0, v1, v2

    const/16 v0, 0xd6

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "radical"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9a

    aput-object v0, v1, v2

    const/16 v0, 0x60

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "radicalex"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9b

    aput-object v0, v1, v2

    const/16 v0, 0xcd

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "reflexsubset"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9c

    aput-object v0, v1, v2

    const/16 v0, 0xca

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "reflexsuperset"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9d

    aput-object v0, v1, v2

    const/16 v0, 0xe2

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "registersans"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9e

    aput-object v0, v1, v2

    const/16 v0, 0xd2

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "registerserif"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9f

    aput-object v0, v1, v2

    const/16 v0, 0x72

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "rho"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa0

    aput-object v0, v1, v2

    const/16 v0, 0xb2

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "second"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa1

    aput-object v0, v1, v2

    const/16 v0, 0x3b

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "semicolon"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa2

    aput-object v0, v1, v2

    const/16 v0, 0x37

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "seven"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa3

    aput-object v0, v1, v2

    const/16 v0, 0x73

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sigma"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa4

    aput-object v0, v1, v2

    const/16 v0, 0x56

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sigma1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa5

    aput-object v0, v1, v2

    const/16 v0, 0x7e

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "similar"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa6

    aput-object v0, v1, v2

    const/16 v0, 0x36

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "six"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa7

    aput-object v0, v1, v2

    const/16 v0, 0x2f

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "slash"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa8

    aput-object v0, v1, v2

    const/16 v0, 0x20

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "space"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xa9

    aput-object v0, v1, v2

    const/16 v0, 0xaa

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "spade"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xaa

    aput-object v0, v1, v2

    const/16 v0, 0x27

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "suchthat"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xab

    aput-object v0, v1, v2

    const/16 v0, 0xe5

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "summation"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xac

    aput-object v0, v1, v2

    const/16 v0, 0x74

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "tau"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xad

    aput-object v0, v1, v2

    const/16 v0, 0x5c

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "therefore"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xae

    aput-object v0, v1, v2

    const/16 v0, 0x71

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "theta"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xaf

    aput-object v0, v1, v2

    const/16 v0, 0x4a

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "theta1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb0

    aput-object v0, v1, v2

    const/16 v0, 0x33

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "three"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb1

    aput-object v0, v1, v2

    const/16 v0, 0xe4

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "trademarksans"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb2

    aput-object v0, v1, v2

    const/16 v0, 0xd4

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "trademarkserif"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb3

    aput-object v0, v1, v2

    const/16 v0, 0x32

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "two"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb4

    aput-object v0, v1, v2

    const/16 v0, 0x5f

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "underscore"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb5

    aput-object v0, v1, v2

    const/16 v0, 0xc8

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "union"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb6

    aput-object v0, v1, v2

    const/16 v0, 0x22

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "universal"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb7

    aput-object v0, v1, v2

    const/16 v0, 0x75

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "upsilon"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb8

    aput-object v0, v1, v2

    const/16 v0, 0xc3

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "weierstrass"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb9

    aput-object v0, v1, v2

    const/16 v0, 0x78

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "xi"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xba

    aput-object v0, v1, v2

    const/16 v0, 0x30

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "zero"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xbb

    aput-object v0, v1, v2

    const/16 v0, 0x7a

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "zeta"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xbc

    aput-object v0, v1, v2

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;->SYMBOL_ENCODING_TABLE:[[Ljava/lang/Object;

    .line 225
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 231
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;-><init>()V

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;->SYMBOL_ENCODING_TABLE:[[Ljava/lang/Object;

    .line 232
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 234
    aget-object v5, v4, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;->add(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    const-string v0, "SymbolEncoding"

    .line 241
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingName()Ljava/lang/String;
    .locals 1

    const-string v0, "SymbolEncoding"

    return-object v0
.end method
