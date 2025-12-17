.class public Lcom/tom_roush/fontbox/cff/CharStringCommand;
.super Ljava/lang/Object;
.source "CharStringCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;
    }
.end annotation


# static fields
.field public static final TYPE1_VOCABULARY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE2_VOCABULARY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private commandKey:Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 226
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 227
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v4, "hstem"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v6, "vstem"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v7, 0x4

    invoke-direct {v2, v7}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v8, "vmoveto"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v9, 0x5

    invoke-direct {v2, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v10, "rlineto"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v11, 0x6

    invoke-direct {v2, v11}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v12, "hlineto"

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v13, 0x7

    invoke-direct {v2, v13}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v14, "vlineto"

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v15, 0x8

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v1, "rrcurveto"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v15, 0x9

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v15, "closepath"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v15, 0xa

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v15, "callsubr"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v15, 0xb

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v15, "return"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v15, 0xc

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v9, "escape"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v9, 0x0

    invoke-direct {v2, v15, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v9, "dotsection"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v2, v15, v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v9, "vstem3"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v9, 0x2

    invoke-direct {v2, v15, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v9, "hstem3"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v2, v15, v11}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v9, "seac"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v2, v15, v13}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v9, "sbw"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v2, v15, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v9, "div"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v9, 0x10

    invoke-direct {v2, v15, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v9, "callothersubr"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v9, 0x11

    invoke-direct {v2, v15, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v9, "pop"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v9, 0x21

    invoke-direct {v2, v15, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v9, "setcurrentpoint"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v9, 0xd

    invoke-direct {v2, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v9, "hsbw"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v9, 0xe

    invoke-direct {v2, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v9, "endchar"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v9, 0x15

    invoke-direct {v2, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v9, "rmoveto"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v9, 0x16

    invoke-direct {v2, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v9, "hmoveto"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v9, 0x1e

    invoke-direct {v2, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v9, "vhcurveto"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v9, 0x1f

    invoke-direct {v2, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v9, "hvcurveto"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/fontbox/cff/CharStringCommand;->TYPE1_VOCABULARY:Ljava/util/Map;

    .line 264
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 265
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v2, v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v2, v5}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v2, v7}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v2, v11}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v2, v13}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "callsubr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "return"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v1, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "escape"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v1, v15, v5}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "and"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v1, v15, v7}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "or"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/4 v2, 0x5

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "not"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x9

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "abs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0xa

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "add"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0xb

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "sub"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v1, v15, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "div"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0xe

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "neg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0xf

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "eq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x12

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "drop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x14

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "put"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x15

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "get"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x16

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "ifelse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x17

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "random"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x18

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "mul"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1a

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "sqrt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1b

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "dup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1c

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "exch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1d

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "index"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1e

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "roll"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x22

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "hflex"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x23

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "flex"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x24

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "hflex1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x25

    invoke-direct {v1, v15, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    const-string v2, "flex1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "endchar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "hstemhm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "hintmask"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "cntrmask"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "rmoveto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "hmoveto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "vstemhm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "rcurveline"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "rlinecurve"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "vvcurveto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "hhcurveto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "shortint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "callgsubr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "vhcurveto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    const-string v2, "hvcurveto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/fontbox/cff/CharStringCommand;->TYPE2_VOCABULARY:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand;->commandKey:Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    .line 41
    new-instance v0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->setKey(Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand;->commandKey:Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    .line 52
    new-instance v0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->setKey(Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand;->commandKey:Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    .line 62
    new-instance v0, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;-><init>([I)V

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->setKey(Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;)V

    return-void
.end method

.method private setKey(Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand;->commandKey:Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 112
    instance-of v0, p1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    .line 115
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CharStringCommand;->commandKey:Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tom_roush/fontbox/cff/CharStringCommand;->TYPE2_VOCABULARY:Ljava/util/Map;

    .line 85
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tom_roush/fontbox/cff/CharStringCommand;->TYPE1_VOCABULARY:Ljava/util/Map;

    .line 88
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    const/16 v1, 0x7c

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
