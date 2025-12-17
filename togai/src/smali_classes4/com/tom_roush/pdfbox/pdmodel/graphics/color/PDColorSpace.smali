.class public abstract Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
.super Ljava/lang/Object;
.source "PDColorSpace.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field protected array:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Z)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Z)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_0

    .line 89
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->createFromCOSObject(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, ". Will try DeviceRGB instead"

    const-string v2, "Unsupported color space kind: "

    const-string v3, "PdfBox-Android"

    if-eqz v0, :cond_b

    .line 93
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz p1, :cond_4

    .line 99
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICECMYK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_CMYK:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 100
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_CMYK:Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICERGB:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_RGB:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 105
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_RGB:Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_0

    .line 109
    :cond_2
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICEGRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_GRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 110
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_GRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 115
    :goto_0
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p2, :cond_4

    const/4 p0, 0x1

    .line 117
    invoke-virtual {p1, v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;Z)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p0

    return-object p0

    .line 122
    :cond_4
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICECMYK:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne p0, p2, :cond_5

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 128
    :cond_5
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICERGB:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne p0, p2, :cond_6

    .line 130
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 132
    :cond_6
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICEGRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne p0, p2, :cond_7

    .line 134
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    return-object p0

    .line 136
    :cond_7
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne p0, p2, :cond_8

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    :cond_8
    if-eqz p1, :cond_a

    .line 144
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 148
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p0

    return-object p0

    .line 146
    :cond_9
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Missing color space: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/MissingResourceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_a
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown color space: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/MissingResourceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_b
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_18

    .line 157
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 158
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 163
    instance-of v4, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v4, :cond_16

    .line 167
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 171
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->CALGRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, v4, :cond_c

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 177
    :cond_c
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->CALRGB:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, v4, :cond_d

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 183
    :cond_d
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICEN:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, v4, :cond_e

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 189
    :cond_e
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->INDEXED:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, v4, :cond_f

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 195
    :cond_f
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->SEPARATION:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, v4, :cond_10

    .line 198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 201
    :cond_10
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->ICCBASED:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, v4, :cond_11

    .line 204
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 207
    :cond_11
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->LAB:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, v4, :cond_12

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 213
    :cond_12
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, v4, :cond_13

    .line 215
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    .line 223
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-object p0

    .line 226
    :cond_13
    sget-object p0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICECMYK:Lcom/tom_roush/pdfbox/cos/COSName;

    if-eq v0, p0, :cond_15

    sget-object p0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICERGB:Lcom/tom_roush/pdfbox/cos/COSName;

    if-eq v0, p0, :cond_15

    sget-object p0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICEGRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, p0, :cond_14

    goto :goto_1

    .line 235
    :cond_14
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid color space kind: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :cond_15
    :goto_1
    invoke-static {v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Z)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p0

    return-object p0

    .line 165
    :cond_16
    new-instance p0, Ljava/io/IOException;

    const-string p1, "First element in colorspace array must be a name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Colorspace array is empty"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_18
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_1a

    move-object v0, p0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 239
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 242
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-eq v1, p0, :cond_19

    .line 249
    invoke-static {v1, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Z)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p0

    return-object p0

    .line 246
    :cond_19
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Recursion in colorspace: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 247
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " points to itself"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected a name or array but got: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createFromCOSObject(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v0

    .line 264
    invoke-interface {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->getColorSpace(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 271
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object p1

    .line 274
    invoke-interface {p1, p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public abstract getDefaultDecode(I)[F
.end method

.method public abstract getInitialColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumberOfComponents()I
.end method

.method public abstract toRGB([F)[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract toRGBImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
