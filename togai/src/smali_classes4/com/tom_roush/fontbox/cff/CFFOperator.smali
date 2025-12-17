.class public final Lcom/tom_roush/fontbox/cff/CFFOperator;
.super Ljava/lang/Object;
.source "CFFOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/cff/CFFOperator$Key;
    }
.end annotation


# static fields
.field private static keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/fontbox/cff/CFFOperator$Key;",
            "Lcom/tom_roush/fontbox/cff/CFFOperator;",
            ">;"
        }
    .end annotation
.end field

.field private static nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/fontbox/cff/CFFOperator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private operatorKey:Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

.field private operatorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 205
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x34

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/tom_roush/fontbox/cff/CFFOperator;->keyMap:Ljava/util/Map;

    .line 206
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/tom_roush/fontbox/cff/CFFOperator;->nameMap:Ljava/util/Map;

    .line 211
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v2, "version"

    invoke-static {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v3, "Notice"

    invoke-static {v0, v3}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v3, 0xc

    invoke-direct {v0, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "Copyright"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v4, "FullName"

    invoke-static {v0, v4}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v5, "FamilyName"

    invoke-static {v0, v5}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v6, "Weight"

    invoke-static {v0, v6}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v2, "isFixedPitch"

    invoke-static {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "ItalicAngle"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v4}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "UnderlinePosition"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v5}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "UnderlineThickness"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v2, "PaintType"

    invoke-static {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/4 v2, 0x6

    invoke-direct {v0, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v4, "CharstringType"

    invoke-static {v0, v4}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v5, "FontMatrix"

    invoke-static {v0, v5}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v5, 0xd

    invoke-direct {v0, v5}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v6, "UniqueID"

    invoke-static {v0, v6}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v1, "FontBBox"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v1, 0x8

    invoke-direct {v0, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v6, "StrokeWidth"

    invoke-static {v0, v6}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v6, 0xe

    invoke-direct {v0, v6}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v7, "XUID"

    invoke-static {v0, v7}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v7, 0xf

    invoke-direct {v0, v7}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v8, "charset"

    invoke-static {v0, v8}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v8, 0x10

    invoke-direct {v0, v8}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v9, "Encoding"

    invoke-static {v0, v9}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v9, 0x11

    invoke-direct {v0, v9}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v10, "CharStrings"

    invoke-static {v0, v10}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v10, 0x12

    invoke-direct {v0, v10}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v10, "Private"

    invoke-static {v0, v10}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v10, 0x14

    invoke-direct {v0, v3, v10}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v11, "SyntheticBase"

    invoke-static {v0, v11}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v11, 0x15

    invoke-direct {v0, v3, v11}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "PostScript"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x16

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "BaseFontName"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x17

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "BaseFontBlend"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x1e

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "ROS"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x1f

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "CIDFontVersion"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x20

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "CIDFontRevision"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x21

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "CIDFontType"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x22

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "CIDCount"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x23

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "UIDBase"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 242
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x24

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "FDArray"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x25

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "FDSelect"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v12, 0x26

    invoke-direct {v0, v3, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v12, "FontName"

    invoke-static {v0, v12}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v2, "BlueValues"

    invoke-static {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 248
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v4}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v2, "OtherBlues"

    invoke-static {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 249
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v1, "FamilyBlues"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 250
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v2, "FamilyOtherBlues"

    invoke-static {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "BlueScale"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v1, 0xa

    invoke-direct {v0, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v2, "BlueShift"

    invoke-static {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v2, 0xb

    invoke-direct {v0, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v4, "BlueFuzz"

    invoke-static {v0, v4}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v1, "StdHW"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v2}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v1, "StdVW"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v3}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "StemSnapH"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v5}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "StemSnapV"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v6}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "ForceBold"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v7}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "LanguageGroup"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v8}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "ExpansionFactor"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v3, v9}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    const-string v1, "initialRandomSeed"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v1, "Subrs"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 263
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v10}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v1, "defaultWidthX"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, v11}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    const-string v1, "nominalWidthX"

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFOperator;->operatorKey:Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFOperator;->operatorName:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->setKey(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;)V

    .line 36
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cff/CFFOperator;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static getOperator(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;)Lcom/tom_roush/fontbox/cff/CFFOperator;
    .locals 1

    sget-object v0, Lcom/tom_roush/fontbox/cff/CFFOperator;->keyMap:Ljava/util/Map;

    .line 113
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/fontbox/cff/CFFOperator;

    return-object p0
.end method

.method public static getOperator(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFOperator;
    .locals 1

    sget-object v0, Lcom/tom_roush/fontbox/cff/CFFOperator;->nameMap:Ljava/util/Map;

    .line 123
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/fontbox/cff/CFFOperator;

    return-object p0
.end method

.method private static register(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V
    .locals 2

    .line 101
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/fontbox/cff/CFFOperator;-><init>(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;Ljava/lang/String;)V

    sget-object v1, Lcom/tom_roush/fontbox/cff/CFFOperator;->keyMap:Ljava/util/Map;

    .line 102
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/tom_roush/fontbox/cff/CFFOperator;->nameMap:Ljava/util/Map;

    .line 103
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setKey(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFOperator;->operatorKey:Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFOperator;->operatorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 91
    instance-of v0, p1, Lcom/tom_roush/fontbox/cff/CFFOperator;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/tom_roush/fontbox/cff/CFFOperator;

    .line 94
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFOperator;->getKey()Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->getKey()Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getKey()Lcom/tom_roush/fontbox/cff/CFFOperator$Key;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFOperator;->operatorKey:Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFOperator;->operatorName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFOperator;->getKey()Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFOperator;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
