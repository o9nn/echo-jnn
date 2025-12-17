.class public interface abstract Lnet/sf/sevenzipjbinding/IOutCreateArchive;
.super Ljava/lang/Object;
.source "IOutCreateArchive.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutArchiveBase;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/sevenzipjbinding/IOutItemBase;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/sevenzipjbinding/IOutArchiveBase;",
        "Ljava/io/Closeable;"
    }
.end annotation


# virtual methods
.method public abstract createArchive(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
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
.end method

.method public abstract getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
.end method
