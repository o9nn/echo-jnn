.class Landroidx/biometric/BiometricFragment$DefaultInjector;
.super Ljava/lang/Object;
.source "BiometricFragment.java"

# interfaces
.implements Landroidx/biometric/BiometricFragment$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultInjector"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment$DefaultInjector;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricFragment$DefaultInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;
    .locals 0

    .line 260
    invoke-static {p1}, Landroidx/biometric/BiometricPrompt;->getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;

    move-result-object p1

    return-object p1
.end method

.method public isFaceHardwarePresent(Landroid/content/Context;)Z
    .locals 0

    .line 270
    invoke-static {p1}, Landroidx/biometric/PackageUtils;->hasSystemFeatureFace(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isFingerprintHardwarePresent(Landroid/content/Context;)Z
    .locals 0

    .line 265
    invoke-static {p1}, Landroidx/biometric/PackageUtils;->hasSystemFeatureFingerprint(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isIrisHardwarePresent(Landroid/content/Context;)Z
    .locals 0

    .line 275
    invoke-static {p1}, Landroidx/biometric/PackageUtils;->hasSystemFeatureIris(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
