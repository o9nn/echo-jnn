.class Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream$1;
.super Ljava/util/LinkedHashMap;
.source "RandomAccessBufferedFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Long;",
        "[B>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5776efef376d9f2dL


# instance fields
.field final synthetic this$0:Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream$1;->this$0:Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;

    .line 57
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "[B>;)Z"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream$1;->this$0:Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;

    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->access$000(Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream$1;->this$0:Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;

    .line 66
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {v1, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->access$102(Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;[B)[B

    :cond_1
    return v0
.end method
