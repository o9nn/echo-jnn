.class public interface abstract Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;
.super Ljava/lang/Object;
.source "IArchiveOpenVolumeCallback.java"


# virtual methods
.method public abstract getProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getStream(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/IInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method
