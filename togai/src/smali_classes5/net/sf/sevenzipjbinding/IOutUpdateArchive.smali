.class public interface abstract Lnet/sf/sevenzipjbinding/IOutUpdateArchive;
.super Ljava/lang/Object;
.source "IOutUpdateArchive.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutArchiveBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/sevenzipjbinding/IOutItemBase;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/sevenzipjbinding/IOutArchiveBase;"
    }
.end annotation


# virtual methods
.method public abstract getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
.end method

.method public abstract getConnectedInArchive()Lnet/sf/sevenzipjbinding/IInArchive;
.end method

.method public abstract updateItems(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
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
.end method
