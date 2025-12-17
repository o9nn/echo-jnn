.class public Lnet/sf/sevenzipjbinding/impl/OutArchiveZipImpl;
.super Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
.source "OutArchiveZipImpl.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutCreateArchiveZip;
.implements Lnet/sf/sevenzipjbinding/IOutUpdateArchiveZip;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
        "Lnet/sf/sevenzipjbinding/IOutItemZip;",
        ">;",
        "Lnet/sf/sevenzipjbinding/IOutCreateArchiveZip;",
        "Lnet/sf/sevenzipjbinding/IOutUpdateArchiveZip;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createArchive(Lnet/sf/sevenzipjbinding/IOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V
    .locals 0
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

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/impl/OutArchiveZipImpl;->createArchive(Lnet/sf/sevenzipjbinding/ISequentialOutStream;ILnet/sf/sevenzipjbinding/IOutCreateCallback;)V

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutArchiveZipImpl;->featureSetLevel(I)V

    return-void
.end method
