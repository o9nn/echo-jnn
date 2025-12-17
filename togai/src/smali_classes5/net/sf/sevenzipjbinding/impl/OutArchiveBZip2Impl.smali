.class public Lnet/sf/sevenzipjbinding/impl/OutArchiveBZip2Impl;
.super Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
.source "OutArchiveBZip2Impl.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutCreateArchiveBZip2;
.implements Lnet/sf/sevenzipjbinding/IOutUpdateArchiveBZip2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
        "Lnet/sf/sevenzipjbinding/IOutItemBZip2;",
        ">;",
        "Lnet/sf/sevenzipjbinding/IOutCreateArchiveBZip2;",
        "Lnet/sf/sevenzipjbinding/IOutUpdateArchiveBZip2;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lnet/sf/sevenzipjbinding/impl/OutArchiveBZip2Impl;->featureSetLevel(I)V

    return-void
.end method
