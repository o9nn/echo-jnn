.class Lnet/sf/sevenzipjbinding/SevenZip$DummyOpenArchiveCallback;
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
    accessFlags = 0xa
    name = "DummyOpenArchiveCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/sevenzipjbinding/SevenZip$1;)V
    .locals 0

    .line 1098
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/SevenZip$DummyOpenArchiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cryptoGetTextPassword()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1118
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v1, "No password was provided for opening protected archive."

    invoke-direct {v0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompleted(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    return-void
.end method

.method public setTotal(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    return-void
.end method
