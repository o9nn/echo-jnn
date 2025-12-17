.class Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;
.super Ljava/lang/Object;
.source "ByteTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteTrieNode"
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
.field private final children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->children:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->value:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->children:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie$ByteTrieNode;->value:Ljava/lang/Object;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Value already set for this trie node"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
