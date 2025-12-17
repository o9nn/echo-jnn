.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;
.super Ljava/lang/Object;
.source "FDFIconFit.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final SCALE_OPTION_ALWAYS:Ljava/lang/String; = "A"

.field public static final SCALE_OPTION_NEVER:Ljava/lang/String; = "N"

.field public static final SCALE_OPTION_ONLY_WHEN_ICON_IS_BIGGER:Ljava/lang/String; = "B"

.field public static final SCALE_OPTION_ONLY_WHEN_ICON_IS_SMALLER:Ljava/lang/String; = "S"

.field public static final SCALE_TYPE_ANAMORPHIC:Ljava/lang/String; = "A"

.field public static final SCALE_TYPE_PROPORTIONAL:Ljava/lang/String; = "P"


# instance fields
.field private fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getFractionalSpaceToAllocate()Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 154
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 158
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->setMin(F)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->setMax(F)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->setFractionalSpaceToAllocate(Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;)V

    goto :goto_0

    .line 164
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getScaleOption()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 97
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "A"

    :cond_0
    return-object v0
.end method

.method public getScaleType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 123
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "P"

    :cond_0
    return-object v0
.end method

.method public setFractionalSpaceToAllocate(Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 176
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setScaleOption(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 112
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setScaleToFitAnnotation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 196
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FB:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setScaleType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 138
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public shouldScaleToFitAnnotation()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;->fit:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 186
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FB:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method
