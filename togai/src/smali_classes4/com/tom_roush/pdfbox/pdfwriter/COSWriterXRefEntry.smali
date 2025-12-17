.class public Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;
.super Ljava/lang/Object;
.source "COSWriterXRefEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final NULLENTRY:Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;


# instance fields
.field private free:Z

.field private key:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

.field private object:Lcom/tom_roush/pdfbox/cos/COSBase;

.field private offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    const v2, 0xffff

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    const/4 v2, 0x0

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;-><init>(JLcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSObjectKey;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->NULLENTRY:Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->setFree(Z)V

    return-void
.end method

.method public constructor <init>(JLcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSObjectKey;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->free:Z

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->setOffset(J)V

    .line 53
    invoke-direct {p0, p3}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 54
    invoke-direct {p0, p4}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->setKey(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)V

    return-void
.end method

.method public static getNullEntry()Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->NULLENTRY:Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    return-object v0
.end method

.method private setKey(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->key:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    return-void
.end method

.method private setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->object:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    return v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->compareTo(Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;)I

    move-result p1

    return p1
.end method

.method public getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->key:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    return-object v0
.end method

.method public getObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->object:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->offset:J

    return-wide v0
.end method

.method public isFree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->free:Z

    return v0
.end method

.method public setFree(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->free:Z

    return-void
.end method

.method public final setOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->offset:J

    return-void
.end method
