.class final Lnet/sf/sevenzipjbinding/SevenZip$ArchiveOpenCryptoCallback;
.super Ljava/lang/Object;
.source "SevenZip.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IArchiveOpenCallback;
.implements Lnet/sf/sevenzipjbinding/ICryptoGetTextPassword;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/sevenzipjbinding/SevenZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArchiveOpenCryptoCallback"
.end annotation


# instance fields
.field private final passwordForOpen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/SevenZip$ArchiveOpenCryptoCallback;->passwordForOpen:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cryptoGetTextPassword()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZip$ArchiveOpenCryptoCallback;->passwordForOpen:Ljava/lang/String;

    return-object v0
.end method

.method public setCompleted(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    return-void
.end method

.method public setTotal(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    return-void
.end method
