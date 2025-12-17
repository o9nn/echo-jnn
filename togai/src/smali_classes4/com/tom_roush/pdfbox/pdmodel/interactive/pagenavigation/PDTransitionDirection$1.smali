.class final enum Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection$1;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;
.source "PDTransitionDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;-><init>(Ljava/lang/String;IILcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection$1;)V

    return-void
.end method


# virtual methods
.method public getCOSBase()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 55
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NONE:Lcom/tom_roush/pdfbox/cos/COSName;

    return-object v0
.end method
