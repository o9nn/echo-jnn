.class public Landroidx/biometric/BiometricManager;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricManager$Api29Impl;,
        Landroidx/biometric/BiometricManager$Api30Impl;,
        Landroidx/biometric/BiometricManager$Api31Impl;,
        Landroidx/biometric/BiometricManager$DefaultInjector;,
        Landroidx/biometric/BiometricManager$Injector;,
        Landroidx/biometric/BiometricManager$StringsCompat;,
        Landroidx/biometric/BiometricManager$Strings;,
        Landroidx/biometric/BiometricManager$Authenticators;
    }
.end annotation


# static fields
.field private static final AUTH_MODALITY_CREDENTIAL:I = 0x1

.field private static final AUTH_MODALITY_FACE:I = 0x8

.field private static final AUTH_MODALITY_FINGERPRINT:I = 0x4

.field private static final AUTH_MODALITY_NONE:I = 0x0

.field private static final AUTH_MODALITY_UNKNOWN_BIOMETRIC:I = 0x2

.field public static final BIOMETRIC_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final BIOMETRIC_ERROR_NONE_ENROLLED:I = 0xb

.field public static final BIOMETRIC_ERROR_NO_HARDWARE:I = 0xc

.field public static final BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final BIOMETRIC_ERROR_UNSUPPORTED:I = -0x2

.field public static final BIOMETRIC_STATUS_UNKNOWN:I = -0x1

.field public static final BIOMETRIC_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BiometricManager"


# instance fields
.field private final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private final mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

.field private final mInjector:Landroidx/biometric/BiometricManager$Injector;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricManager$Injector;)V
    .locals 3

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 682
    invoke-interface {p1}, Landroidx/biometric/BiometricManager$Injector;->getBiometricManager()Landroid/hardware/biometrics/BiometricManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_1

    .line 685
    invoke-interface {p1}, Landroidx/biometric/BiometricManager$Injector;->getFingerprintManager()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Landroidx/biometric/BiometricManager;->mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    return-void
.end method

.method private canAuthenticateCompat(I)I
    .locals 3

    .line 748
    invoke-static {p1}, Landroidx/biometric/AuthenticatorUtils;->isSupportedCombination(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/16 v0, 0xc

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 758
    invoke-interface {v1}, Landroidx/biometric/BiometricManager$Injector;->isDeviceSecurable()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 764
    :cond_2
    invoke-static {p1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 765
    invoke-interface {p1}, Landroidx/biometric/BiometricManager$Injector;->isDeviceSecuredWithCredential()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/16 p1, 0xb

    :goto_0
    return p1

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_6

    .line 772
    invoke-static {p1}, Landroidx/biometric/AuthenticatorUtils;->isWeakBiometricAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 773
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithWeakBiometricOnApi29()I

    move-result p1

    goto :goto_1

    .line 774
    :cond_5
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithStrongBiometricOnApi29()I

    move-result p1

    :goto_1
    return p1

    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 781
    invoke-interface {p1}, Landroidx/biometric/BiometricManager$Injector;->isFingerprintHardwarePresent()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 782
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithFingerprintOrUnknownBiometric()I

    move-result v0

    :cond_7
    return v0

    .line 787
    :cond_8
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithFingerprint()I

    move-result p1

    return p1
.end method

.method private canAuthenticateWithFingerprint()I
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    if-nez v0, :cond_0

    const-string v0, "BiometricManager"

    const-string v1, "Failure in canAuthenticate(). FingerprintManager was null."

    .line 885
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 888
    :cond_0
    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc

    return v0

    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 891
    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xb

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private canAuthenticateWithFingerprintOrUnknownBiometric()I
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 865
    invoke-interface {v0}, Landroidx/biometric/BiometricManager$Injector;->isDeviceSecuredWithCredential()Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithFingerprint()I

    move-result v0

    return v0

    .line 871
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithFingerprint()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private canAuthenticateWithStrongBiometricOnApi29()I
    .locals 5

    const-string v0, "BiometricManager"

    .line 803
    invoke-static {}, Landroidx/biometric/BiometricManager$Api29Impl;->getCanAuthenticateWithCryptoMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 807
    invoke-static {}, Landroidx/biometric/CryptoObjectUtils;->createFakeCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    .line 806
    invoke-static {v2}, Landroidx/biometric/CryptoObjectUtils;->wrapForBiometricPrompt(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 812
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 814
    :goto_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 815
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const-string v1, "Invalid return type for canAuthenticate(CryptoObject)."

    .line 817
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_1
    const-string v2, "Failed to invoke canAuthenticate(CryptoObject)."

    .line 820
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    :cond_2
    :goto_2
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithWeakBiometricOnApi29()I

    move-result v0

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 827
    invoke-interface {v1}, Landroidx/biometric/BiometricManager$Injector;->isStrongBiometricGuaranteed()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    .line 832
    :cond_3
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithFingerprintOrUnknownBiometric()I

    move-result v0

    :cond_4
    :goto_3
    return v0
.end method

.method private canAuthenticateWithWeakBiometricOnApi29()I
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-nez v0, :cond_0

    const-string v0, "BiometricManager"

    const-string v1, "Failure in canAuthenticate(). BiometricManager was null."

    .line 847
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 850
    :cond_0
    invoke-static {v0}, Landroidx/biometric/BiometricManager$Api29Impl;->canAuthenticate(Landroid/hardware/biometrics/BiometricManager;)I

    move-result v0

    return v0
.end method

.method public static from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;
    .locals 2

    .line 670
    new-instance v0, Landroidx/biometric/BiometricManager;

    new-instance v1, Landroidx/biometric/BiometricManager$DefaultInjector;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricManager$DefaultInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroidx/biometric/BiometricManager;-><init>(Landroidx/biometric/BiometricManager$Injector;)V

    return-object v0
.end method


# virtual methods
.method public canAuthenticate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xff

    .line 702
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v0

    return v0
.end method

.method public canAuthenticate(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-nez v0, :cond_0

    const-string p1, "BiometricManager"

    const-string v0, "Failure in canAuthenticate(). BiometricManager was null."

    .line 726
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 729
    :cond_0
    invoke-static {v0, p1}, Landroidx/biometric/BiometricManager$Api30Impl;->canAuthenticate(Landroid/hardware/biometrics/BiometricManager;I)I

    move-result p1

    return p1

    .line 731
    :cond_1
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricManager;->canAuthenticateCompat(I)I

    move-result p1

    return p1
.end method

.method public getStrings(I)Landroidx/biometric/BiometricManager$Strings;
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-nez v0, :cond_0

    const-string p1, "BiometricManager"

    const-string v0, "Failure in getStrings(). BiometricManager was null."

    .line 910
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 913
    :cond_0
    new-instance v0, Landroidx/biometric/BiometricManager$Strings;

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-static {v1, p1}, Landroidx/biometric/BiometricManager$Api31Impl;->getStrings(Landroid/hardware/biometrics/BiometricManager;I)Landroid/hardware/biometrics/BiometricManager$Strings;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/biometric/BiometricManager$Strings;-><init>(Landroid/hardware/biometrics/BiometricManager$Strings;)V

    return-object v0

    .line 916
    :cond_1
    new-instance v0, Landroidx/biometric/BiometricManager$StringsCompat;

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 917
    invoke-interface {v1}, Landroidx/biometric/BiometricManager$Injector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 919
    invoke-interface {v1}, Landroidx/biometric/BiometricManager$Injector;->isFingerprintHardwarePresent()Z

    move-result v5

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 920
    invoke-interface {v1}, Landroidx/biometric/BiometricManager$Injector;->isFaceHardwarePresent()Z

    move-result v6

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 921
    invoke-interface {v1}, Landroidx/biometric/BiometricManager$Injector;->isIrisHardwarePresent()Z

    move-result v7

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 922
    invoke-interface {v1}, Landroidx/biometric/BiometricManager$Injector;->isDeviceSecuredWithCredential()Z

    move-result v8

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Landroidx/biometric/BiometricManager$StringsCompat;-><init>(Landroidx/biometric/BiometricManager;Landroid/content/res/Resources;IZZZZ)V

    .line 924
    new-instance p1, Landroidx/biometric/BiometricManager$Strings;

    invoke-direct {p1, v0}, Landroidx/biometric/BiometricManager$Strings;-><init>(Landroidx/biometric/BiometricManager$StringsCompat;)V

    return-object p1
.end method
