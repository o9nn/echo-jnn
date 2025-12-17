.class final Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;
.super Ljava/lang/Object;
.source "CCITTFaxDecoderStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tree"
.end annotation


# instance fields
.field final root:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    new-instance v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;-><init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->root:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method fill(III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->root:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_5

    add-int/lit8 v3, p1, -0x1

    sub-int v4, v3, v2

    shr-int v4, p2, v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    .line 534
    :goto_1
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->walk(Z)Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    move-result-object v6

    if-nez v6, :cond_3

    .line 537
    new-instance v6, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;-><init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V

    if-ne v2, v3, :cond_1

    .line 540
    iput p3, v6, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    .line 541
    iput-boolean v5, v6, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->isLeaf:Z

    :cond_1
    if-nez p2, :cond_2

    .line 545
    iput-boolean v5, v6, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->canBeFill:Z

    .line 548
    :cond_2
    invoke-virtual {v0, v4, v6}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->set(ZLcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V

    goto :goto_2

    .line 551
    :cond_3
    iget-boolean v0, v6, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->isLeaf:Z

    if-nez v0, :cond_4

    :goto_2
    move-object v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "node is leaf, no other following"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method fill(IILcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->root:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_5

    add-int/lit8 v3, p1, -0x1

    sub-int v4, v3, v2

    shr-int v4, p2, v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    .line 566
    :goto_1
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->walk(Z)Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    move-result-object v6

    if-nez v6, :cond_3

    if-ne v2, v3, :cond_1

    move-object v3, p3

    goto :goto_2

    .line 573
    :cond_1
    new-instance v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;-><init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V

    :goto_2
    if-nez p2, :cond_2

    .line 577
    iput-boolean v5, v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->canBeFill:Z

    .line 580
    :cond_2
    invoke-virtual {v0, v4, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->set(ZLcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V

    move-object v0, v3

    goto :goto_3

    .line 583
    :cond_3
    iget-boolean v0, v6, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->isLeaf:Z

    if-nez v0, :cond_4

    move-object v0, v6

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "node is leaf, no other following"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method
