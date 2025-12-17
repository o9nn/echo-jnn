.class final Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;
.super Ljava/lang/Object;
.source "CCITTFaxDecoderStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field canBeFill:Z

.field isLeaf:Z

.field left:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

.field right:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

.field value:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->canBeFill:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->isLeaf:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V
    .locals 0

    .line 497
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;-><init>()V

    return-void
.end method


# virtual methods
.method set(ZLcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V
    .locals 0

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->left:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->right:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[leaf="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->isLeaf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canBeFill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->canBeFill:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method walk(Z)Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->right:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->left:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    :goto_0
    return-object p1
.end method
