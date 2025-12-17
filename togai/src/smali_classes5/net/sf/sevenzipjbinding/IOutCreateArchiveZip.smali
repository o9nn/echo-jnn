.class public interface abstract Lnet/sf/sevenzipjbinding/IOutCreateArchiveZip;
.super Ljava/lang/Object;
.source "IOutCreateArchiveZip.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutCreateArchive;
.implements Lnet/sf/sevenzipjbinding/IOutFeatureSetLevel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/sf/sevenzipjbinding/IOutCreateArchive<",
        "Lnet/sf/sevenzipjbinding/IOutItemZip;",
        ">;",
        "Lnet/sf/sevenzipjbinding/IOutFeatureSetLevel;"
    }
.end annotation


# virtual methods
.method public abstract createArchive(Lnet/sf/sevenzipjbinding/IOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/sevenzipjbinding/IOutStream;",
            "I",
            "Lnet/sf/sevenzipjbinding/IOutCreateCallback<",
            "+",
            "Lnet/sf/sevenzipjbinding/IOutItemZip;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method
