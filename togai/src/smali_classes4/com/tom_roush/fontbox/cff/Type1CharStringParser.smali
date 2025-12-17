.class public Lcom/tom_roush/fontbox/cff/Type1CharStringParser;
.super Ljava/lang/Object;
.source "Type1CharStringParser.java"


# static fields
.field static final CALLOTHERSUBR:I = 0x10

.field static final CALLSUBR:I = 0xa

.field static final POP:I = 0x11

.field static final RETURN:I = 0xb

.field static final TWO_BYTE:I = 0xc


# instance fields
.field private final fontName:Ljava/lang/String;

.field private final glyphName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->fontName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->glyphName:Ljava/lang/String;

    return-void
.end method

.method private parse([BLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
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

    .line 76
    new-instance v0, Lcom/tom_roush/fontbox/cff/DataInput;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/cff/DataInput;-><init>([B)V

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/DataInput;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 79
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedByte()I

    move-result p1

    const/16 v1, 0xa

    const-string v2, "PdfBox-Android"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v1, :cond_3

    .line 83
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 84
    instance-of v1, p1, Ljava/lang/Integer;

    const-string v5, "\' of font "

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Parameter "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " for CALLSUBR is ignored, integer expected in glyph \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->glyphName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->fontName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->parse([BLjava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 96
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 97
    instance-of v1, p1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    .line 98
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->getValue()[I

    move-result-object p1

    aget p1, p1, v3

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 100
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 105
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CALLSUBR is ignored, operand: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", subrs.size(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 106
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in glyph \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->glyphName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->fontName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    if-ne p1, v1, :cond_9

    .line 115
    invoke-virtual {v0, v3}, Lcom/tom_roush/fontbox/cff/DataInput;->peekUnsignedByte(I)I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_9

    .line 118
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/DataInput;->readByte()B

    .line 120
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 121
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {p3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 124
    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    .line 125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    const/4 v6, 0x3

    if-eq p1, v6, :cond_4

    move p1, v3

    .line 146
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge p1, v6, :cond_7

    .line 148
    invoke-static {p3}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->removeInteger(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 142
    :cond_4
    invoke-static {p3}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->removeInteger(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v7, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_3

    .line 137
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance p1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {p1, v1, v6}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(II)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 128
    :cond_6
    invoke-static {p3}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->removeInteger(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v7, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 129
    invoke-static {p3}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->removeInteger(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v7, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 130
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance p1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {p1, v1, v6}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(II)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Lcom/tom_roush/fontbox/cff/DataInput;->peekUnsignedByte(I)I

    move-result p1

    if-ne p1, v1, :cond_8

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/cff/DataInput;->peekUnsignedByte(I)I

    move-result p1

    const/16 v5, 0x11

    if-ne p1, v5, :cond_8

    .line 156
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/DataInput;->readByte()B

    .line 157
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/DataInput;->readByte()B

    .line 158
    invoke-interface {v7}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 161
    :cond_8
    invoke-interface {v7}, Ljava/util/Deque;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Value left on the PostScript stack in glyph "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->glyphName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " of font "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->fontName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    if-ltz p1, :cond_a

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_a

    .line 168
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->readCommand(Lcom/tom_roush/fontbox/cff/DataInput;I)Lcom/tom_roush/fontbox/cff/CharStringCommand;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x20

    if-lt p1, v1, :cond_b

    const/16 v1, 0xff

    if-gt p1, v1, :cond_b

    .line 172
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->readNumber(Lcom/tom_roush/fontbox/cff/DataInput;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 176
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    return-object p3
.end method

.method private readCommand(Lcom/tom_roush/fontbox/cff/DataInput;I)Lcom/tom_roush/fontbox/cff/CharStringCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedByte()I

    move-result p1

    .line 208
    new-instance v0, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v0, p2, p1}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(II)V

    return-object v0

    .line 210
    :cond_0
    new-instance p1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {p1, p2}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    return-object p1
.end method

.method private readNumber(Lcom/tom_roush/fontbox/cff/DataInput;I)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-lt p2, v0, :cond_0

    const/16 v0, 0xf6

    if-gt p2, v0, :cond_0

    add-int/lit16 p2, p2, -0x8b

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0xf7

    if-lt p2, v0, :cond_1

    const/16 v1, 0xfa

    if-gt p2, v1, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedByte()I

    move-result p1

    sub-int/2addr p2, v0

    mul-int/lit16 p2, p2, 0x100

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x6c

    .line 222
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0xfb

    if-lt p2, v0, :cond_2

    const/16 v1, 0xfe

    if-gt p2, v1, :cond_2

    .line 226
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedByte()I

    move-result p1

    sub-int/2addr p2, v0

    neg-int p2, p2

    mul-int/lit16 p2, p2, 0x100

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x6c

    .line 227
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0xff

    if-ne p2, v0, :cond_3

    .line 231
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/DataInput;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 235
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static removeInteger(Ljava/util/List;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 187
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 189
    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 191
    :cond_0
    check-cast v0, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    .line 194
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->getValue()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;->getValue()[I

    move-result-object v2

    aget v2, v2, v1

    if-ne v2, v3, :cond_1

    .line 196
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 198
    div-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 200
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected char string command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public parse([BLjava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "[B>;)",
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

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/fontbox/cff/Type1CharStringParser;->parse([BLjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
