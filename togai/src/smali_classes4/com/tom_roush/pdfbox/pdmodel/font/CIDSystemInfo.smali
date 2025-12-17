.class public final Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;
.super Ljava/lang/Object;
.source "CIDSystemInfo.java"


# instance fields
.field private final ordering:Ljava/lang/String;

.field private final registry:Ljava/lang/String;

.field private final supplement:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->registry:Ljava/lang/String;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->ordering:Ljava/lang/String;

    iput p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->supplement:I

    return-void
.end method


# virtual methods
.method public getOrdering()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->ordering:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->registry:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplement()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->supplement:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->getRegistry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->getSupplement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
