.class public abstract Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;
.super Ljava/lang/Object;
.source "PDShading.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final SHADING_TYPE1:I = 0x1

.field public static final SHADING_TYPE2:I = 0x2

.field public static final SHADING_TYPE3:I = 0x3

.field public static final SHADING_TYPE4:I = 0x4

.field public static final SHADING_TYPE5:I = 0x5

.field public static final SHADING_TYPE6:I = 0x6

.field public static final SHADING_TYPE7:I = 0x7


# instance fields
.field private bBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field private background:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private function:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

.field private functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->background:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->bBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->function:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    .line 87
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->background:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->bBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->function:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 303
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Unknown shading type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :pswitch_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType7;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType7;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 297
    :pswitch_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType6;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType6;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 294
    :pswitch_2
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 291
    :pswitch_3
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 288
    :pswitch_4
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType3;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType3;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 285
    :pswitch_5
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 282
    :pswitch_6
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFunctionsArray()[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    if-nez v0, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FUNCTION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 362
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    .line 365
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_1

    .line 367
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 369
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 370
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    .line 371
    new-array v3, v1, [Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    .line 374
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    invoke-static {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mandatory /Function element must be a dictionary or an array"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    return-object v0
.end method


# virtual methods
.method public evalFunction(F)[F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 394
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->evalFunction([F)[F

    move-result-object p1

    return-object p1
.end method

.method public evalFunction([F)[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->getFunctionsArray()[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v0

    .line 407
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 411
    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->eval([F)[F

    move-result-object p1

    goto :goto_1

    .line 415
    :cond_0
    new-array v2, v1, [F

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 418
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->eval([F)[F

    move-result-object v5

    .line 419
    aget v5, v5, v3

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 425
    :goto_1
    array-length v0, p1

    if-ge v3, v0, :cond_4

    .line 427
    aget v0, p1, v3

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 429
    aput v1, p1, v3

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 433
    aput v1, p1, v3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public getAntiAlias()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 231
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ANTI_ALIAS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->bBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 174
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 177
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->bBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->bBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    return-object v0
.end method

.method public getBackground()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->background:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 158
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BACKGROUND:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->background:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->background:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/RectF;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 244
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CS:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-object v0
.end method

.method public getFunction()Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->function:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FUNCTION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->function:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->function:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    return-object v0
.end method

.method public abstract getShadingType()I
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 118
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAntiAlias(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 221
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ANTI_ALIAS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->bBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 193
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 197
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->bBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method

.method public setBackground(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->background:Lcom/tom_roush/pdfbox/cos/COSArray;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 146
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BACKGROUND:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 260
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 264
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :goto_0
    return-void
.end method

.method public setFunction(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->function:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    .line 329
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FUNCTION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFunction(Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->functionArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->function:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    .line 317
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FUNCTION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setShadingType(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 128
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
