.class public interface abstract Lnet/sf/sevenzipjbinding/IInArchive;
.super Ljava/lang/Object;
.source "IInArchive.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract extract([IZLnet/sf/sevenzipjbinding/IArchiveExtractCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract extractSlow(ILnet/sf/sevenzipjbinding/ISequentialOutStream;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract extractSlow(ILnet/sf/sevenzipjbinding/ISequentialOutStream;Ljava/lang/String;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
.end method

.method public abstract getArchiveProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getArchivePropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getConnectedOutArchive()Lnet/sf/sevenzipjbinding/IOutUpdateArchive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/sevenzipjbinding/IOutUpdateArchive<",
            "Lnet/sf/sevenzipjbinding/IOutItemAllFormats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getConnectedOutArchive7z()Lnet/sf/sevenzipjbinding/IOutUpdateArchive7z;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getConnectedOutArchiveBZip2()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveBZip2;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getConnectedOutArchiveGZip()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveGZip;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getConnectedOutArchiveTar()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveTar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getConnectedOutArchiveZip()Lnet/sf/sevenzipjbinding/IOutUpdateArchiveZip;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getNumberOfArchiveProperties()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getNumberOfItems()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getNumberOfProperties()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getPropertyInfo(I)Lnet/sf/sevenzipjbinding/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getSimpleInterface()Lnet/sf/sevenzipjbinding/simple/ISimpleInArchive;
.end method

.method public abstract getStringArchiveProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getStringProperty(ILnet/sf/sevenzipjbinding/PropID;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method
