.class public interface abstract Lnet/sf/sevenzipjbinding/IOutCreateCallback;
.super Ljava/lang/Object;
.source "IOutCreateCallback.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IProgress;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/sevenzipjbinding/IOutItemBase;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/sevenzipjbinding/IProgress;"
    }
.end annotation


# virtual methods
.method public abstract getItemInformation(ILnet/sf/sevenzipjbinding/impl/OutItemFactory;)Lnet/sf/sevenzipjbinding/IOutItemBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/sf/sevenzipjbinding/impl/OutItemFactory<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract getStream(I)Lnet/sf/sevenzipjbinding/ISequentialInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method

.method public abstract setOperationResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method
