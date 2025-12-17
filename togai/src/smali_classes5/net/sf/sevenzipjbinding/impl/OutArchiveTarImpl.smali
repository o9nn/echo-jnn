.class public Lnet/sf/sevenzipjbinding/impl/OutArchiveTarImpl;
.super Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;
.source "OutArchiveTarImpl.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IOutCreateArchiveTar;
.implements Lnet/sf/sevenzipjbinding/IOutUpdateArchiveTar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
        "Lnet/sf/sevenzipjbinding/IOutItemTar;",
        ">;",
        "Lnet/sf/sevenzipjbinding/IOutCreateArchiveTar;",
        "Lnet/sf/sevenzipjbinding/IOutUpdateArchiveTar;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl;-><init>()V

    return-void
.end method
