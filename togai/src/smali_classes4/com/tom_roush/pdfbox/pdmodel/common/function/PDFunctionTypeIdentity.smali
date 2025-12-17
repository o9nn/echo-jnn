.class public Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionTypeIdentity;
.super Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
.source "PDFunctionTypeIdentity.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0

    const/4 p1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method


# virtual methods
.method public eval([F)[F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method public getFunctionType()I
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getRangeValues()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "FunctionTypeIdentity"

    return-object v0
.end method
