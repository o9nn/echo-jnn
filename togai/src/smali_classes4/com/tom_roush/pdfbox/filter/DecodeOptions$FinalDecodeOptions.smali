.class Lcom/tom_roush/pdfbox/filter/DecodeOptions$FinalDecodeOptions;
.super Lcom/tom_roush/pdfbox/filter/DecodeOptions;
.source "DecodeOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/filter/DecodeOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalDecodeOptions"
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/DecodeOptions;-><init>()V

    .line 222
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->setFilterSubsampled(Z)V

    return-void
.end method


# virtual methods
.method setFilterSubsampled(Z)V
    .locals 0

    return-void
.end method

.method public setSourceRegion(Landroid/graphics/Rect;)V
    .locals 1

    .line 228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This instance may not be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubsamplingOffsetX(I)V
    .locals 1

    .line 246
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This instance may not be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubsamplingOffsetY(I)V
    .locals 1

    .line 252
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This instance may not be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubsamplingX(I)V
    .locals 1

    .line 234
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This instance may not be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubsamplingY(I)V
    .locals 1

    .line 240
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This instance may not be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
