.class Lnet/sf/sevenzipjbinding/SevenZipException$PrintStreamWriter;
.super Ljava/io/Writer;
.source "SevenZipException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/sevenzipjbinding/SevenZipException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintStreamWriter"
.end annotation


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$PrintStreamWriter;->printStream:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException$PrintStreamWriter;->printStream:Ljava/io/PrintStream;

    .line 103
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException$PrintStreamWriter;->printStream:Ljava/io/PrintStream;

    .line 108
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 113
    array-length v0, p1

    if-ne p3, v0, :cond_0

    iget-object p2, p0, Lnet/sf/sevenzipjbinding/SevenZipException$PrintStreamWriter;->printStream:Ljava/io/PrintStream;

    .line 114
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print([C)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException$PrintStreamWriter;->printStream:Ljava/io/PrintStream;

    .line 116
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
