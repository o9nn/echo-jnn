.class public final Lcom/tom_roush/pdfbox/filter/Predictor;
.super Ljava/lang/Object;
.source "Predictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calcSetBitSeq(IIII)I
    .locals 1

    const/4 v0, 0x1

    shl-int p2, v0, p2

    sub-int/2addr p2, v0

    and-int/2addr p3, p2

    shl-int/2addr p2, p1

    not-int p2, p2

    and-int/2addr p0, p2

    shl-int p1, p3, p1

    or-int/2addr p0, p1

    return p0
.end method

.method static calculateRowLength(III)I
    .locals 0

    mul-int/2addr p0, p1

    mul-int/2addr p2, p0

    add-int/lit8 p2, p2, 0x7

    .line 207
    div-int/lit8 p2, p2, 0x8

    return p2
.end method

.method static decodePredictorRow(IIII[B[B)V
    .locals 7

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    mul-int v1, p1, p2

    const/4 v2, 0x7

    add-int/2addr v1, v2

    const/16 v3, 0x8

    .line 57
    div-int/2addr v1, v3

    .line 58
    array-length v4, p4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq p0, v5, :cond_6

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    move p0, v6

    :goto_0
    if-ge p0, v4, :cond_e

    .line 176
    aget-byte p1, p4, p0

    and-int/lit16 p1, p1, 0xff

    sub-int p2, p0, v1

    if-ltz p2, :cond_1

    .line 177
    aget-byte p3, p4, p2

    and-int/lit16 p3, p3, 0xff

    goto :goto_1

    :cond_1
    move p3, v6

    .line 178
    :goto_1
    aget-byte v0, p5, p0

    and-int/lit16 v0, v0, 0xff

    if-ltz p2, :cond_2

    .line 179
    aget-byte p2, p5, p2

    and-int/lit16 p2, p2, 0xff

    goto :goto_2

    :cond_2
    move p2, v6

    :goto_2
    add-int v2, p3, v0

    sub-int/2addr v2, p2

    sub-int v3, v2, p3

    .line 181
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v5, v2, v0

    .line 182
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v2, p2

    .line 183
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v3, v5, :cond_3

    if-gt v3, v2, :cond_3

    add-int/2addr p1, p3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 187
    aput-byte p1, p4, p0

    goto :goto_3

    :cond_3
    if-gt v5, v2, :cond_4

    add-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 191
    aput-byte p1, p4, p0

    goto :goto_3

    :cond_4
    add-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 195
    aput-byte p1, p4, p0

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :pswitch_1
    move p0, v6

    :goto_4
    if-ge p0, v4, :cond_e

    .line 166
    aget-byte p1, p4, p0

    and-int/lit16 p1, p1, 0xff

    sub-int p2, p0, v1

    if-ltz p2, :cond_5

    .line 167
    aget-byte p2, p4, p2

    and-int/lit16 p2, p2, 0xff

    goto :goto_5

    :cond_5
    move p2, v6

    .line 168
    :goto_5
    aget-byte p3, p5, p0

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, p3

    .line 169
    div-int/2addr p2, v5

    add-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p4, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :goto_6
    :pswitch_2
    if-ge v6, v4, :cond_e

    .line 157
    aget-byte p0, p4, v6

    and-int/lit16 p0, p0, 0xff

    .line 158
    aget-byte p1, p5, v6

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 159
    aput-byte p0, p4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :pswitch_3
    move p0, v1

    :goto_7
    if-ge p0, v4, :cond_e

    .line 148
    aget-byte p1, p4, p0

    sub-int p2, p0, v1

    .line 149
    aget-byte p2, p4, p2

    add-int/2addr p1, p2

    int-to-byte p1, p1

    .line 150
    aput-byte p1, p4, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_6
    if-ne p2, v3, :cond_7

    move p0, v1

    :goto_8
    if-ge p0, v4, :cond_e

    .line 68
    aget-byte p1, p4, p0

    and-int/lit16 p1, p1, 0xff

    sub-int p2, p0, v1

    .line 69
    aget-byte p2, p4, p2

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p1, p2

    int-to-byte p1, p1

    .line 70
    aput-byte p1, p4, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_7
    const/16 p0, 0x10

    if-ne p2, p0, :cond_8

    move p0, v1

    :goto_9
    add-int/lit8 p1, v4, -0x1

    if-ge p0, p1, :cond_e

    .line 78
    aget-byte p1, p4, p0

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v3

    add-int/lit8 p2, p0, 0x1

    aget-byte p3, p4, p2

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p1, p3

    sub-int p3, p0, v1

    .line 79
    aget-byte p5, p4, p3

    and-int/lit16 p5, p5, 0xff

    shl-int/2addr p5, v3

    add-int/2addr p3, v0

    aget-byte p3, p4, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p5, p3

    add-int/2addr p1, p5

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 81
    aput-byte p3, p4, p0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 82
    aput-byte p1, p4, p2

    add-int/lit8 p0, p0, 0x2

    goto :goto_9

    :cond_8
    if-ne p2, v0, :cond_d

    if-ne p1, v0, :cond_d

    :goto_a
    if-ge v6, v4, :cond_e

    move p0, v2

    :goto_b
    if-ltz p0, :cond_c

    .line 96
    aget-byte p1, p4, v6

    shr-int p2, p1, p0

    and-int/2addr p2, v0

    if-nez v6, :cond_9

    if-ne p0, v2, :cond_9

    goto :goto_d

    :cond_9
    if-ne p0, v2, :cond_a

    add-int/lit8 p3, v6, -0x1

    .line 105
    aget-byte p3, p4, p3

    goto :goto_c

    :cond_a
    add-int/lit8 p3, p0, 0x1

    shr-int p3, p1, p3

    :goto_c
    and-int/2addr p3, v0

    add-int/2addr p2, p3

    and-int/2addr p2, v0

    if-nez p2, :cond_b

    shl-int p2, v0, p0

    not-int p2, p2

    and-int/2addr p1, p2

    int-to-byte p1, p1

    .line 115
    aput-byte p1, p4, v6

    goto :goto_d

    :cond_b
    shl-int p2, v0, p0

    or-int/2addr p1, p2

    int-to-byte p1, p1

    .line 120
    aput-byte p1, p4, v6

    :goto_d
    add-int/lit8 p0, p0, -0x1

    goto :goto_b

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_d
    mul-int/2addr p3, p1

    move p0, p1

    :goto_e
    if-ge p0, p3, :cond_e

    mul-int p5, p0, p2

    .line 130
    div-int/lit8 v0, p5, 0x8

    .line 131
    rem-int/2addr p5, v3

    rsub-int/lit8 p5, p5, 0x8

    sub-int/2addr p5, p2

    sub-int v1, p0, p1

    mul-int/2addr v1, p2

    .line 132
    div-int/lit8 v2, v1, 0x8

    .line 133
    rem-int/2addr v1, v3

    rsub-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, p2

    .line 135
    aget-byte v4, p4, v0

    invoke-static {v4, p5, p2}, Lcom/tom_roush/pdfbox/filter/Predictor;->getBitSeq(III)I

    move-result v4

    .line 136
    aget-byte v2, p4, v2

    invoke-static {v2, v1, p2}, Lcom/tom_roush/pdfbox/filter/Predictor;->getBitSeq(III)I

    move-result v1

    .line 137
    aget-byte v2, p4, v0

    add-int/2addr v4, v1

    invoke-static {v2, p5, p2, v4}, Lcom/tom_roush/pdfbox/filter/Predictor;->calcSetBitSeq(IIII)I

    move-result p5

    int-to-byte p5, p5

    aput-byte p5, p4, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_e

    :cond_e
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getBitSeq(III)I
    .locals 1

    const/4 v0, 0x1

    shl-int p2, v0, p2

    sub-int/2addr p2, v0

    ushr-int/2addr p0, p1

    and-int/2addr p0, p2

    return p0
.end method

.method static wrapPredictor(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/io/OutputStream;
    .locals 7

    .line 237
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PREDICTOR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v3

    const/4 v0, 0x1

    if-le v3, v0, :cond_0

    .line 240
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLORS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 241
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_COMPONENT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v5

    .line 242
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLUMNS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v6

    .line 244
    new-instance p1, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;-><init>(Ljava/io/OutputStream;IIII)V

    return-object p1

    :cond_0
    return-object p0
.end method
