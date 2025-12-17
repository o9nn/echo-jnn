.class Landroidx/biometric/BiometricManager$Api31Impl;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonLabel(Landroid/hardware/biometrics/BiometricManager$Strings;)Ljava/lang/CharSequence;
    .locals 0

    .line 967
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricManager$Strings;->getButtonLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getPromptMessage(Landroid/hardware/biometrics/BiometricManager$Strings;)Ljava/lang/CharSequence;
    .locals 0

    .line 983
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricManager$Strings;->getPromptMessage()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getSettingName(Landroid/hardware/biometrics/BiometricManager$Strings;)Ljava/lang/CharSequence;
    .locals 0

    .line 999
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricManager$Strings;->getSettingName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getStrings(Landroid/hardware/biometrics/BiometricManager;I)Landroid/hardware/biometrics/BiometricManager$Strings;
    .locals 0

    .line 951
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricManager;->getStrings(I)Landroid/hardware/biometrics/BiometricManager$Strings;

    move-result-object p0

    return-object p0
.end method
