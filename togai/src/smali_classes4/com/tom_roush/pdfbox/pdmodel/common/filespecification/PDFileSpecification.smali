.class public abstract Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;
.super Ljava/lang/Object;
.source "PDFileSpecification.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFS(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 51
    :cond_0
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;

    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;-><init>(Lcom/tom_roush/pdfbox/cos/COSString;)V

    :goto_0
    move-object p0, v0

    goto :goto_1

    .line 55
    :cond_1
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;

    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :goto_1
    return-object p0

    .line 61
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Unknown file specification "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getFile()Ljava/lang/String;
.end method

.method public abstract setFile(Ljava/lang/String;)V
.end method
