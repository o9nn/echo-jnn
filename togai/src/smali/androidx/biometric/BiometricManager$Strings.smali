.class public Landroidx/biometric/BiometricManager$Strings;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strings"
.end annotation


# instance fields
.field private final mStrings:Landroid/hardware/biometrics/BiometricManager$Strings;

.field private final mStringsCompat:Landroidx/biometric/BiometricManager$StringsCompat;


# direct methods
.method constructor <init>(Landroid/hardware/biometrics/BiometricManager$Strings;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/BiometricManager$Strings;->mStrings:Landroid/hardware/biometrics/BiometricManager$Strings;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/biometric/BiometricManager$Strings;->mStringsCompat:Landroidx/biometric/BiometricManager$StringsCompat;

    return-void
.end method

.method constructor <init>(Landroidx/biometric/BiometricManager$StringsCompat;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->mStrings:Landroid/hardware/biometrics/BiometricManager$Strings;

    iput-object p1, p0, Landroidx/biometric/BiometricManager$Strings;->mStringsCompat:Landroidx/biometric/BiometricManager$StringsCompat;

    return-void
.end method


# virtual methods
.method public getButtonLabel()Ljava/lang/CharSequence;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->mStrings:Landroid/hardware/biometrics/BiometricManager$Strings;

    if-eqz v0, :cond_0

    .line 226
    invoke-static {v0}, Landroidx/biometric/BiometricManager$Api31Impl;->getButtonLabel(Landroid/hardware/biometrics/BiometricManager$Strings;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->mStringsCompat:Landroidx/biometric/BiometricManager$StringsCompat;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Landroidx/biometric/BiometricManager$StringsCompat;->getButtonLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "BiometricManager"

    const-string v1, "Failure in Strings.getButtonLabel(). No available string provider."

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPromptMessage()Ljava/lang/CharSequence;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->mStrings:Landroid/hardware/biometrics/BiometricManager$Strings;

    if-eqz v0, :cond_0

    .line 261
    invoke-static {v0}, Landroidx/biometric/BiometricManager$Api31Impl;->getPromptMessage(Landroid/hardware/biometrics/BiometricManager$Strings;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->mStringsCompat:Landroidx/biometric/BiometricManager$StringsCompat;

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Landroidx/biometric/BiometricManager$StringsCompat;->getPromptMessage()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "BiometricManager"

    const-string v1, "Failure in Strings.getPromptMessage(). No available string provider."

    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingName()Ljava/lang/CharSequence;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->mStrings:Landroid/hardware/biometrics/BiometricManager$Strings;

    if-eqz v0, :cond_0

    .line 298
    invoke-static {v0}, Landroidx/biometric/BiometricManager$Api31Impl;->getSettingName(Landroid/hardware/biometrics/BiometricManager$Strings;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->mStringsCompat:Landroidx/biometric/BiometricManager$StringsCompat;

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Landroidx/biometric/BiometricManager$StringsCompat;->getSettingName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "BiometricManager"

    const-string v1, "Failure in Strings.getSettingName(). No available string provider."

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
