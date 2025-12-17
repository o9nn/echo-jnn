.class public Lcom/tom_roush/fontbox/cff/Type2CharStringParser;
.super Ljava/lang/Object;
.source "Type2CharStringParser.java"


# instance fields
.field private final fontName:Ljava/lang/String;

.field private final glyphName:Ljava/lang/String;

.field private hstemCount:I

.field private sequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private vstemCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->hstemCount:I

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->vstemCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->fontName:Ljava/lang/String;

    .line 59
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%04x"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->glyphName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->hstemCount:I

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->vstemCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->fontName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->glyphName:Ljava/lang/String;

    return-void
.end method

.method private getMaskLength()I
    .locals 2

    iget v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->hstemCount:I

    iget v1, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->vstemCount:I

    add-int/2addr v0, v1

    .line 253
    div-int/lit8 v1, v0, 0x8

    .line 254
    rem-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    return v1
.end method

.method private parse([B[[B[[BZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B[[BZ)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->hstemCount:I

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->vstemCount:I

    .line 82
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 84
    :cond_0
    new-instance p4, Lcom/tom_roush/fontbox/cff/DataInput;

    invoke-direct {p4, p1}, Lcom/tom_roush/fontbox/cff/DataInput;-><init>([B)V

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 85
    array-length v1, p3

    if-lez v1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 86
    array-length v2, p2

    if-lez v2, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 88
    :cond_3
    :goto_1
    invoke-virtual {p4}, Lcom/tom_roush/fontbox/cff/DataInput;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 90
    invoke-virtual {p4}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedByte()I

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0xb

    const/16 v6, 0x46b

    const v7, 0x8000

    const/16 v8, 0x6b

    const v9, 0x846c

    const/16 v10, 0x4d8

    if-ne v3, v4, :cond_6

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 93
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 96
    array-length v4, p3

    if-ge v4, v10, :cond_4

    move v6, v8

    goto :goto_2

    :cond_4
    if-ge v4, v9, :cond_5

    goto :goto_2

    :cond_5
    move v6, v7

    .line 110
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v6, v3

    .line 111
    array-length v3, p3

    if-ge v6, v3, :cond_3

    .line 113
    aget-object v3, p3, v6

    .line 114
    invoke-direct {p0, v3, p2, p3, v0}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->parse([B[[B[[BZ)Ljava/util/List;

    iget-object v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 115
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 116
    instance-of v4, v3, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->getValue()[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 118
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const/16 v4, 0x1d

    if-ne v3, v4, :cond_9

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 125
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 128
    array-length v4, p2

    if-ge v4, v10, :cond_7

    move v6, v8

    goto :goto_3

    :cond_7
    if-ge v4, v9, :cond_8

    goto :goto_3

    :cond_8
    move v6, v7

    .line 143
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v6, v3

    .line 144
    array-length v3, p2

    if-ge v6, v3, :cond_3

    .line 146
    aget-object v3, p2, v6

    .line 147
    invoke-direct {p0, v3, p2, p3, v0}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->parse([B[[B[[BZ)Ljava/util/List;

    iget-object v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 148
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 149
    instance-of v4, v3, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->getValue()[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 151
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    if-ltz v3, :cond_a

    const/16 v5, 0x1b

    if-gt v3, v5, :cond_a

    iget-object v4, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 158
    invoke-direct {p0, v3, p4}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->readCommand(ILcom/tom_roush/fontbox/cff/DataInput;)Lcom/tom_roush/fontbox/cff/CharStringCommand;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    const/16 v5, 0x1c

    if-ne v3, v5, :cond_b

    iget-object v4, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 162
    invoke-direct {p0, v3, p4}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->readNumber(ILcom/tom_roush/fontbox/cff/DataInput;)Ljava/lang/Number;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    if-lt v3, v4, :cond_c

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_c

    iget-object v4, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 166
    invoke-direct {p0, v3, p4}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->readCommand(ILcom/tom_roush/fontbox/cff/DataInput;)Lcom/tom_roush/fontbox/cff/CharStringCommand;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x20

    if-lt v3, v4, :cond_d

    const/16 v4, 0xff

    if-gt v3, v4, :cond_d

    iget-object v4, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 170
    invoke-direct {p0, v3, p4}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->readNumber(ILcom/tom_roush/fontbox/cff/DataInput;)Ljava/lang/Number;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 174
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_e
    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    return-object p1
.end method

.method private peekNumbers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 264
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->sequence:Ljava/util/List;

    .line 266
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 268
    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    .line 272
    check-cast v2, Ljava/lang/Number;

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private readCommand(ILcom/tom_roush/fontbox/cff/DataInput;)Lcom/tom_roush/fontbox/cff/CharStringCommand;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/16 v3, 0x12

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v3, 0x17

    if-ne p1, v3, :cond_3

    :cond_1
    iget v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->vstemCount:I

    .line 189
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->peekNumbers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->vstemCount:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->hstemCount:I

    .line 185
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->peekNumbers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->hstemCount:I

    :cond_3
    :goto_1
    const/16 v3, 0xc

    if-ne p1, v3, :cond_4

    .line 194
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedByte()I

    move-result p2

    .line 196
    new-instance v0, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(II)V

    return-object v0

    :cond_4
    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 211
    :cond_5
    new-instance p2, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {p2, p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    return-object p2

    .line 200
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->getMaskLength()I

    move-result v0

    add-int/2addr v0, v2

    new-array v1, v0, [I

    const/4 v3, 0x0

    .line 201
    aput p1, v1, v3

    :goto_3
    if-ge v2, v0, :cond_7

    .line 205
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedByte()I

    move-result p1

    aput p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 208
    :cond_7
    new-instance p1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {p1, v1}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>([I)V

    return-object p1
.end method

.method private readNumber(ILcom/tom_roush/fontbox/cff/DataInput;)Ljava/lang/Number;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    .line 219
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/DataInput;->readShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    const/16 v0, 0xf6

    if-gt p1, v0, :cond_1

    add-int/lit16 p1, p1, -0x8b

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0xf7

    if-lt p1, v0, :cond_2

    const/16 v1, 0xfa

    if-gt p1, v1, :cond_2

    .line 227
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedByte()I

    move-result p2

    sub-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x100

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x6c

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0xfb

    if-lt p1, v0, :cond_3

    const/16 v1, 0xfe

    if-gt p1, v1, :cond_3

    .line 233
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedByte()I

    move-result p2

    sub-int/2addr p1, v0

    neg-int p1, p1

    mul-int/lit16 p1, p1, 0x100

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x6c

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v0, 0xff

    if-ne p1, v0, :cond_4

    .line 239
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/DataInput;->readShort()S

    move-result p1

    .line 241
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedShort()I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x40efffe000000000L    # 65535.0

    div-double/2addr v0, v2

    int-to-double p1, p1

    add-double/2addr p1, v0

    .line 242
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 246
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public parse([B[[B[[B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B[[B)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->parse([B[[B[[BZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
