.class interface abstract Landroidx/biometric/BiometricFragment$Injector;
.super Ljava/lang/Object;
.source "BiometricFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Injector"
.end annotation


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;
.end method

.method public abstract isFaceHardwarePresent(Landroid/content/Context;)Z
.end method

.method public abstract isFingerprintHardwarePresent(Landroid/content/Context;)Z
.end method

.method public abstract isIrisHardwarePresent(Landroid/content/Context;)Z
.end method
