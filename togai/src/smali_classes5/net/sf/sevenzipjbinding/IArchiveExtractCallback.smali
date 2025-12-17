.class public interface abstract Lnet/sf/sevenzipjbinding/IArchiveExtractCallback;
.super Ljava/lang/Object;
.source "IArchiveExtractCallback.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IProgress;


# virtual methods
.method public abstract getStream(ILnet/sf/sevenzipjbinding/ExtractAskMode;)Lnet/sf/sevenzipjbinding/ISequentialOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract prepareOperation(Lnet/sf/sevenzipjbinding/ExtractAskMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract setOperationResult(Lnet/sf/sevenzipjbinding/ExtractOperationResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method
