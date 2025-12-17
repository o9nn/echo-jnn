.class Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;
.super Ljava/lang/Object;
.source "KerningSubtable.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/KerningSubtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairData0Format0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;",
        "Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private pairs:[[I

.field private searchRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    const-class v0, Lcom/tom_roush/fontbox/ttf/KerningSubtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/fontbox/ttf/KerningSubtable$1;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 252
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .locals 5

    const/4 v0, 0x0

    .line 295
    aget v1, p1, v0

    .line 296
    aget v2, p2, v0

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x1

    if-le v1, v2, :cond_1

    return v4

    .line 307
    :cond_1
    aget p1, p1, v4

    .line 308
    aget p2, p2, v4

    if-ge p1, p2, :cond_2

    return v3

    :cond_2
    if-le p1, p2, :cond_3

    return v4

    :cond_3
    return v0
.end method

.method public getKerning(II)I
    .locals 1

    const/4 v0, 0x0

    filled-new-array {p1, p2, v0}, [I

    move-result-object p1

    iget-object p2, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;->pairs:[[I

    .line 280
    invoke-static {p2, p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;->pairs:[[I

    .line 283
    aget-object p1, p2, p1

    const/4 p2, 0x2

    aget p1, p1, p2

    return p1

    :cond_0
    return v0
.end method

.method public read(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    .line 261
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;->searchRange:I

    .line 262
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 263
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v1

    .line 264
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;->pairs:[[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v3

    .line 268
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v4

    .line 269
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v5

    iget-object v6, p0, Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData0Format0;->pairs:[[I

    .line 270
    aget-object v6, v6, v2

    aput v3, v6, v1

    const/4 v3, 0x1

    .line 271
    aput v4, v6, v3

    const/4 v3, 0x2

    .line 272
    aput v5, v6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
