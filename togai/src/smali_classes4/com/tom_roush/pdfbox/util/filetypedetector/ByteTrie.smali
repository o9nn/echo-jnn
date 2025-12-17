.class Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;
.super Ljava/lang/Object;
.source "ByteTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private maxDepth:I

.field private final root:Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->root:Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;

    return-void
.end method


# virtual methods
.method public varargs addPath(Ljava/lang/Object;[[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[[B)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->root:Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;

    .line 99
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p2, v3

    .line 101
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-byte v8, v5, v7

    .line 103
    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->access$000(Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;

    if-nez v9, :cond_0

    .line 106
    new-instance v9, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;

    invoke-direct {v9}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;-><init>()V

    .line 107
    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->access$000(Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->setValue(Ljava/lang/Object;)V

    iget p1, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->maxDepth:I

    .line 114
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->maxDepth:I

    return-void
.end method

.method public find([B)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->root:Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;

    .line 73
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 74
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, p1, v3

    .line 76
    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->access$000(Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;

    if-nez v0, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getMaxDepth()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->maxDepth:I

    return v0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->root:Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;

    .line 123
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->setValue(Ljava/lang/Object;)V

    return-void
.end method
