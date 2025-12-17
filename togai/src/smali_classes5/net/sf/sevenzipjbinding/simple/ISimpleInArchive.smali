.class public interface abstract Lnet/sf/sevenzipjbinding/simple/ISimpleInArchive;
.super Ljava/lang/Object;
.source "ISimpleInArchive.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getArchiveItem(I)Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getArchiveItems()[Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;
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
