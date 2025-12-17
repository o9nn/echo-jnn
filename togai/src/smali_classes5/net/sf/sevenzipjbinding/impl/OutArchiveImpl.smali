.class public Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
.super Ljava/lang/Object;
.source "OutArchiveImpl.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutArchive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/sevenzipjbinding/IOutItemBase;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/sevenzipjbinding/IOutArchive<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field private closed:Z

.field private compressionLevel:I

.field private headerEncryption:Ljava/lang/Boolean;

.field private inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

.field private jbindingSession:J

.field private sevenZipArchiveInstance:J

.field private threadCount:I

.field private trace:Z

.field private tracePrintStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->compressionLevel:I

    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->threadCount:I

    return-void
.end method

.method private doUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/ISequentialOutStream;",
            "I",
            "Lnet/sf/sevenzipjbinding/IOutCreateCallback<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->applyFeatures()V

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILjava/lang/Object;)V

    return-void
.end method

.method private ensureOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    if-eqz v0, :cond_0

    .line 204
    check-cast v0, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;

    invoke-virtual {v0}, Lnet/sf/sevenzipjbinding/impl/InArchiveImpl;->ensureOpened()V

    :cond_0
    return-void

    .line 201
    :cond_1
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v1, "OutArchive closed"

    invoke-direct {v0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private native nativeUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method private final traceMessage(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->trace:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->tracePrintStream:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected applyFeatures()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->ensureOpened()V

    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->compressionLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeSetLevel(I)V

    :cond_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->headerEncryption:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeSetHeaderEncryption(Z)V

    :cond_1
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->threadCount:I

    if-ltz v0, :cond_2

    .line 78
    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeSetMultithreading(I)V

    :cond_2
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->closed:Z

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    if-eqz v0, :cond_1

    return-void

    .line 124
    :cond_1
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->nativeClose()V

    return-void
.end method

.method public createArchive(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/ISequentialOutStream;",
            "I",
            "Lnet/sf/sevenzipjbinding/IOutCreateCallback<",
            "+TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->ensureOpened()V

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->doUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V

    return-void
.end method

.method protected featureSetHeaderEncryption(Z)V
    .locals 0

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->headerEncryption:Ljava/lang/Boolean;

    return-void
.end method

.method protected featureSetLevel(I)V
    .locals 0

    iput p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->compressionLevel:I

    return-void
.end method

.method protected featureSetThreadCount(I)V
    .locals 0

    iput p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->threadCount:I

    return-void
.end method

.method public getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    return-object v0
.end method

.method public getConnectedInArchive()Lnet/sf/sevenzipjbinding/IInArchive;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    return-object v0
.end method

.method public getTracePrintStream()Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->tracePrintStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method public isTrace()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->trace:Z

    return v0
.end method

.method protected native nativeSetHeaderEncryption(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method protected native nativeSetLevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method protected native nativeSetMultithreading(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method protected native nativeSetSolidSpec(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method protected setArchiveFormat(Lnet/sf/sevenzipjbinding/ArchiveFormat;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->archiveFormat:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    return-void
.end method

.method protected setInArchive(Lnet/sf/sevenzipjbinding/IInArchive;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->inArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    return-void
.end method

.method public setTrace(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->trace:Z

    return-void
.end method

.method public setTracePrintStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->tracePrintStream:Ljava/io/PrintStream;

    return-void
.end method

.method public updateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/ISequentialOutStream;",
            "I",
            "Lnet/sf/sevenzipjbinding/IOutCreateCallback<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->ensureOpened()V

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;->doUpdateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V

    return-void
.end method
