.class public Landroidx/biometric/BiometricFragment;
.super Landroidx/fragment/app/Fragment;
.source "BiometricFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricFragment$Api21Impl;,
        Landroidx/biometric/BiometricFragment$Api28Impl;,
        Landroidx/biometric/BiometricFragment$Api29Impl;,
        Landroidx/biometric/BiometricFragment$Api30Impl;,
        Landroidx/biometric/BiometricFragment$DefaultInjector;,
        Landroidx/biometric/BiometricFragment$Injector;,
        Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;,
        Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;,
        Landroidx/biometric/BiometricFragment$ShowPromptForAuthenticationRunnable;,
        Landroidx/biometric/BiometricFragment$PromptExecutor;
    }
.end annotation


# static fields
.field static final CANCELED_FROM_CLIENT:I = 0x3

.field static final CANCELED_FROM_INTERNAL:I = 0x0

.field static final CANCELED_FROM_NEGATIVE_BUTTON:I = 0x2

.field static final CANCELED_FROM_USER:I = 0x1

.field private static final DISMISS_INSTANTLY_DELAY_MS:I = 0x1f4

.field private static final FINGERPRINT_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.biometric.FingerprintDialogFragment"

.field private static final HIDE_DIALOG_DELAY_MS:I = 0x7d0

.field private static final REQUEST_CONFIRM_CREDENTIAL:I = 0x1

.field private static final SHOW_PROMPT_DELAY_MS:I = 0x258

.field private static final TAG:Ljava/lang/String; = "BiometricFragment"


# instance fields
.field private mInjector:Landroidx/biometric/BiometricFragment$Injector;

.field private mViewModel:Landroidx/biometric/BiometricViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 282
    new-instance v0, Landroidx/biometric/BiometricFragment$DefaultInjector;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment$DefaultInjector;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    return-void
.end method

.method private static checkForFingerprintPreAuthenticationErrors(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)I
    .locals 1

    .line 1141
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0xc

    return p0

    .line 1143
    :cond_0
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0xb

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private connectViewModel()V
    .locals 3

    .line 373
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setClientActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 377
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationResult()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda2;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 385
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationError()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda3;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 395
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationHelpMessage()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda4;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 403
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAuthenticationFailurePending()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda5;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 411
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isNegativeButtonPressPending()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda6;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 423
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isFingerprintDialogCancelPending()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda7;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private dismissFingerprintDialog()V
    .locals 3

    .line 756
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 758
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setPromptShowing(Z)V

    .line 761
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.biometric.FingerprintDialogFragment"

    .line 764
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v1, :cond_2

    .line 767
    invoke-virtual {v1}, Landroidx/biometric/FingerprintDialogFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    invoke-virtual {v1}, Landroidx/biometric/FingerprintDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    :goto_0
    return-void
.end method

.method private getDismissDialogDelay()I
    .locals 2

    .line 1277
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1278
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/biometric/DeviceUtils;->shouldHideFingerprintDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    :goto_0
    return v0
.end method

.method private getViewModel()Landroidx/biometric/BiometricViewModel;
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 363
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/biometric/BiometricFragment$Injector;->getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    return-object v0
.end method

.method private handleConfirmCredentialResult(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 976
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 978
    invoke-virtual {p1}, Landroidx/biometric/BiometricViewModel;->isUsingKeyguardManagerForBiometricAndCredential()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 982
    invoke-virtual {p1, v1}, Landroidx/biometric/BiometricViewModel;->setUsingKeyguardManagerForBiometricAndCredential(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 988
    :goto_0
    new-instance p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    goto :goto_1

    .line 993
    :cond_1
    sget p1, Landroidx/biometric/R$string;->generic_error_user_canceled:I

    .line 995
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    .line 993
    invoke-virtual {p0, v0, p1}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private isChangingConfigurations()Z
    .locals 1

    .line 1262
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFingerprintDialogNeededForCrypto()Z
    .locals 3

    .line 1185
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 1186
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1189
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1190
    invoke-static {v0, v1, v2}, Landroidx/biometric/DeviceUtils;->shouldUseFingerprintForCrypto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFingerprintDialogNeededForErrorHandling()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 1204
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/biometric/BiometricFragment$Injector;->isFingerprintHardwarePresent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isKeyguardManagerNeededForBiometricAndCredential()Z
    .locals 4

    .line 1235
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1236
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/biometric/DeviceUtils;->shouldUseKeyguardManagerForBiometricAndCredential(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1245
    invoke-static {v2}, Landroidx/biometric/AuthenticatorUtils;->isWeakBiometricAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1246
    invoke-static {v2}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1247
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setUsingKeyguardManagerForBiometricAndCredential(Z)V

    :cond_1
    return v1
.end method

.method private isKeyguardManagerNeededForCredential()Z
    .locals 4

    .line 1208
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 1213
    invoke-interface {v1, v0}, Landroidx/biometric/BiometricFragment$Injector;->isFingerprintHardwarePresent(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 1214
    invoke-interface {v1, v0}, Landroidx/biometric/BiometricFragment$Injector;->isFaceHardwarePresent(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 1215
    invoke-interface {v1, v0}, Landroidx/biometric/BiometricFragment$Injector;->isIrisHardwarePresent(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 1220
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isManagingDeviceCredentialButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1221
    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private isUsingFingerprintDialog()Z
    .locals 1

    .line 1172
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isFingerprintDialogNeededForCrypto()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isFingerprintDialogNeededForErrorHandling()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$showFingerprintDialogForAuthentication$6(Landroidx/biometric/BiometricViewModel;)V
    .locals 1

    const/4 v0, 0x0

    .line 546
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogDismissedInstantly(Z)V

    return-void
.end method

.method private launchConfirmCredentialActivity()V
    .locals 5

    .line 919
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    const-string v0, "Failed to check device credential. Client context not found."

    .line 921
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 925
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "Failed to check device credential. View model was null."

    .line 927
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 932
    :cond_1
    invoke-static {v0}, Landroidx/biometric/KeyguardUtils;->getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 934
    sget v0, Landroidx/biometric/R$string;->generic_error_no_keyguard:I

    .line 936
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    .line 934
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    return-void

    .line 941
    :cond_2
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 942
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 943
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 946
    :goto_0
    invoke-static {v0, v1, v3}, Landroidx/biometric/BiometricFragment$Api21Impl;->createConfirmDeviceCredentialIntent(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 951
    sget v0, Landroidx/biometric/R$string;->generic_error_no_device_credential:I

    .line 953
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    .line 951
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    return-void

    :cond_4
    const/4 v1, 0x1

    .line 957
    invoke-virtual {v2, v1}, Landroidx/biometric/BiometricViewModel;->setConfirmingDeviceCredential(Z)V

    .line 960
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 961
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->dismissFingerprintDialog()V

    :cond_5
    const/high16 v2, 0x8080000

    .line 965
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 966
    invoke-virtual {p0, v0, v1}, Landroidx/biometric/BiometricFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static newInstance()Landroidx/biometric/BiometricFragment;
    .locals 1

    .line 295
    new-instance v0, Landroidx/biometric/BiometricFragment;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment;-><init>()V

    return-object v0
.end method

.method static newInstance(Landroidx/biometric/BiometricFragment$Injector;)Landroidx/biometric/BiometricFragment;
    .locals 1

    .line 305
    new-instance v0, Landroidx/biometric/BiometricFragment;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment;-><init>()V

    iput-object p0, v0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    return-object v0
.end method

.method private sendErrorToClient(ILjava/lang/CharSequence;)V
    .locals 3

    .line 1083
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    const-string p1, "Unable to send error to client. View model was null."

    .line 1085
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1089
    :cond_0
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isConfirmingDeviceCredential()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Error not sent to client. User is confirming their device credential."

    .line 1090
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1094
    :cond_1
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAwaitingResult()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "Error not sent to client. Client is not awaiting a result."

    .line 1095
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 1099
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 1100
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$2;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/biometric/BiometricFragment$2;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;ILjava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendFailureToClient()V
    .locals 3

    .line 1114
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    const-string v0, "Unable to send failure to client. View model was null."

    .line 1116
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1120
    :cond_0
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAwaitingResult()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "Failure not sent to client. Client is not awaiting a result."

    .line 1121
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1125
    :cond_1
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$3;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$3;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 1023
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessToClient(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 1024
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    return-void
.end method

.method private sendSuccessToClient(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 3

    .line 1052
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    const-string p1, "Unable to send success to client. View model was null."

    .line 1054
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1058
    :cond_0
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAwaitingResult()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Success not sent to client. Client is not awaiting a result."

    .line 1059
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1063
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 1064
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$1;

    invoke-direct {v2, p0, v0, p1}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showBiometricPromptForAuthentication()V
    .locals 5

    .line 566
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->createPromptBuilder(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 568
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "BiometricFragment"

    const-string v1, "Not showing biometric prompt. View model was null."

    .line 570
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 574
    :cond_0
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 575
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 576
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v2, :cond_1

    .line 578
    invoke-static {v0, v2}, Landroidx/biometric/BiometricFragment$Api28Impl;->setTitle(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 581
    invoke-static {v0, v3}, Landroidx/biometric/BiometricFragment$Api28Impl;->setSubtitle(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 584
    invoke-static {v0, v4}, Landroidx/biometric/BiometricFragment$Api28Impl;->setDescription(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 587
    :cond_3
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 588
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 592
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 593
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    .line 589
    invoke-static {v0, v2, v3, v4}, Landroidx/biometric/BiometricFragment$Api28Impl;->setNegativeButton(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_5

    .line 598
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->isConfirmationRequired()Z

    move-result v2

    invoke-static {v0, v2}, Landroidx/biometric/BiometricFragment$Api29Impl;->setConfirmationRequired(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 603
    :cond_5
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_6

    .line 605
    invoke-static {v0, v1}, Landroidx/biometric/BiometricFragment$Api30Impl;->setAllowedAuthenticators(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)V

    goto :goto_0

    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_7

    .line 608
    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    .line 607
    invoke-static {v0, v1}, Landroidx/biometric/BiometricFragment$Api29Impl;->setDeviceCredentialAllowed(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 611
    :cond_7
    :goto_0
    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->buildPrompt(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/biometric/BiometricFragment;->authenticateWithBiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt;Landroid/content/Context;)V

    return-void
.end method

.method private showFingerprintDialogForAuthentication()V
    .locals 7

    .line 526
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 528
    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 529
    invoke-static {v1}, Landroidx/biometric/BiometricFragment;->checkForFingerprintPreAuthenticationErrors(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    invoke-static {v0, v2}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-virtual {p0, v2, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    return-void

    .line 541
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 542
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 543
    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogDismissedInstantly(Z)V

    .line 544
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v3}, Landroidx/biometric/DeviceUtils;->shouldHideFingerprintDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 545
    invoke-interface {v3}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/biometric/BiometricViewModel;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    invoke-static {}, Landroidx/biometric/FingerprintDialogFragment;->newInstance()Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v3

    .line 550
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "androidx.biometric.FingerprintDialogFragment"

    invoke-virtual {v3, v4, v5}, Landroidx/biometric/FingerprintDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    .line 553
    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricViewModel;->setCanceledFrom(I)V

    .line 555
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->authenticateWithFingerprint(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private showFingerprintErrorMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1005
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1009
    :cond_0
    sget p1, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x2

    .line 1010
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogState(I)V

    .line 1011
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogHelpMessage(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 3

    .line 444
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    const-string p1, "Not launching prompt. Client context was null."

    .line 446
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 450
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Not launching prompt. View model was null."

    .line 452
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 456
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setPromptInfo(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    .line 460
    invoke-static {p1, p2}, Landroidx/biometric/AuthenticatorUtils;->getConsolidatedAuthenticators(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I

    move-result p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2

    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    .line 465
    invoke-static {}, Landroidx/biometric/CryptoObjectUtils;->createFakeCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/biometric/BiometricViewModel;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 470
    :goto_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isManagingDeviceCredentialButton()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 471
    sget p1, Landroidx/biometric/R$string;->confirm_device_credential_password:I

    .line 472
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonTextOverride(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 475
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonTextOverride(Ljava/lang/CharSequence;)V

    .line 480
    :goto_1
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isKeyguardManagerNeededForCredential()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 481
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 482
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    return-void

    .line 487
    :cond_4
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isDelayingPrompt()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 488
    invoke-interface {p1}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Landroidx/biometric/BiometricFragment$ShowPromptForAuthenticationRunnable;

    invoke-direct {p2, p0}, Landroidx/biometric/BiometricFragment$ShowPromptForAuthenticationRunnable;-><init>(Landroidx/biometric/BiometricFragment;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 491
    :cond_5
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->showPromptForAuthentication()V

    :goto_2
    return-void
.end method

.method authenticateWithBiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt;Landroid/content/Context;)V
    .locals 5

    .line 664
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    const-string p1, "Not authenticating with biometric prompt. View model was null."

    .line 666
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 671
    :cond_0
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Landroidx/biometric/CryptoObjectUtils;->wrapForBiometricPrompt(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v2

    .line 673
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/biometric/CancellationSignalProvider;->getBiometricCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v3

    .line 674
    new-instance v4, Landroidx/biometric/BiometricFragment$PromptExecutor;

    invoke-direct {v4}, Landroidx/biometric/BiometricFragment$PromptExecutor;-><init>()V

    .line 676
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationCallbackProvider()Landroidx/biometric/AuthenticationCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/AuthenticationCallbackProvider;->getBiometricCallback()Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    if-nez v2, :cond_1

    .line 680
    :try_start_0
    invoke-static {p1, v3, v4, v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_1

    .line 682
    :cond_1
    invoke-static {p1, v2, v3, v4, v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Got NPE while authenticating with biometric prompt."

    .line 687
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_2

    .line 690
    sget p1, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    const/4 p2, 0x1

    .line 692
    invoke-virtual {p0, p2, p1}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method authenticateWithFingerprint(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;Landroid/content/Context;)V
    .locals 9

    .line 626
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    const-string p1, "Not showing fingerprint dialog. View model was null."

    .line 628
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 633
    :cond_0
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Landroidx/biometric/CryptoObjectUtils;->wrapForFingerprintManager(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v4

    .line 635
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/biometric/CancellationSignalProvider;->getFingerprintCancellationSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v6

    .line 637
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationCallbackProvider()Landroidx/biometric/AuthenticationCallbackProvider;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Landroidx/biometric/AuthenticationCallbackProvider;->getFingerprintCallback()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    .line 641
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Got NPE while authenticating with fingerprint."

    .line 645
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 648
    invoke-static {p2, p1}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 647
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method cancelAuthentication(I)V
    .locals 2

    .line 702
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BiometricFragment"

    const-string v0, "Unable to cancel authentication. View model was null."

    .line 704
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 708
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isIgnoringCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 712
    :cond_1
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setCanceledFrom(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 717
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-direct {p0, v1, p1}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 721
    :cond_2
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/biometric/CancellationSignalProvider;->cancel()V

    return-void
.end method

.method dismiss()V
    .locals 4

    .line 729
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->dismissFingerprintDialog()V

    .line 731
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 733
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setPromptShowing(Z)V

    :cond_0
    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isConfirmingDeviceCredential()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 741
    :cond_2
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 742
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/biometric/DeviceUtils;->shouldDelayShowingPrompt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 744
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setDelayingPrompt(Z)V

    :cond_3
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 747
    invoke-interface {v0}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-direct {v1, v2}, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;-><init>(Landroidx/biometric/BiometricViewModel;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method isManagingDeviceCredentialButton()Z
    .locals 3

    .line 1157
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v0

    .line 1160
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$connectViewModel$0$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {p0, p2}, Landroidx/biometric/BiometricFragment;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    const/4 p2, 0x0

    .line 381
    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setAuthenticationResult(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$connectViewModel$1$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Landroidx/biometric/BiometricErrorData;)V
    .locals 1

    .line 0
    if-eqz p2, :cond_0

    .line 389
    invoke-virtual {p2}, Landroidx/biometric/BiometricErrorData;->getErrorCode()I

    move-result v0

    .line 390
    invoke-virtual {p2}, Landroidx/biometric/BiometricErrorData;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object p2

    .line 388
    invoke-virtual {p0, v0, p2}, Landroidx/biometric/BiometricFragment;->onAuthenticationError(ILjava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 391
    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setAuthenticationError(Landroidx/biometric/BiometricErrorData;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$connectViewModel$2$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 398
    invoke-virtual {p0, p2}, Landroidx/biometric/BiometricFragment;->onAuthenticationHelp(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 399
    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setAuthenticationError(Landroidx/biometric/BiometricErrorData;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$connectViewModel$3$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Ljava/lang/Boolean;)V
    .locals 0

    .line 405
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 406
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->onAuthenticationFailed()V

    const/4 p2, 0x0

    .line 407
    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setAuthenticationFailurePending(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$connectViewModel$4$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Ljava/lang/Boolean;)V
    .locals 0

    .line 413
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 414
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isManagingDeviceCredentialButton()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 415
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->onDeviceCredentialButtonPressed()V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->onCancelButtonPressed()V

    :goto_0
    const/4 p2, 0x0

    .line 419
    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonPressPending(Z)V

    :cond_1
    return-void
.end method

.method synthetic lambda$connectViewModel$5$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Ljava/lang/Boolean;)V
    .locals 0

    .line 425
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 426
    invoke-virtual {p0, p2}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    .line 427
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    const/4 p2, 0x0

    .line 428
    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogCancelPending(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAuthenticationError$7$androidx-biometric-BiometricFragment(ILjava/lang/CharSequence;)V
    .locals 0

    .line 841
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 346
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 348
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 350
    invoke-virtual {p1, p3}, Landroidx/biometric/BiometricViewModel;->setConfirmingDeviceCredential(Z)V

    .line 352
    :cond_0
    invoke-direct {p0, p2}, Landroidx/biometric/BiometricFragment;->handleConfirmCredentialResult(I)V

    :cond_1
    return-void
.end method

.method onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    .line 798
    invoke-static {p1}, Landroidx/biometric/ErrorUtils;->isKnownError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 802
    :goto_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "BiometricFragment"

    const-string p2, "Unable to handle authentication error. View model was null."

    .line 804
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 808
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_2

    .line 811
    invoke-static {p1}, Landroidx/biometric/ErrorUtils;->isLockoutError(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 813
    invoke-static {v1}, Landroidx/biometric/KeyguardUtils;->isDeviceSecuredWithCredential(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 815
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v1

    .line 814
    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 816
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    return-void

    .line 820
    :cond_2
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_3

    goto :goto_1

    .line 824
    :cond_3
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 828
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCanceledFrom()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 831
    :cond_4
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 834
    :cond_5
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    goto :goto_4

    .line 836
    :cond_6
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isFingerprintDialogDismissedInstantly()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 837
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 839
    :cond_7
    invoke-direct {p0, p2}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 840
    invoke-interface {v1}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V

    .line 842
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getDismissDialogDelay()I

    move-result p1

    int-to-long p1, p1

    .line 840
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    const/4 p1, 0x1

    .line 847
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogDismissedInstantly(Z)V

    goto :goto_4

    :cond_8
    if-eqz p2, :cond_9

    goto :goto_3

    .line 852
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 853
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method onAuthenticationFailed()V
    .locals 1

    .line 874
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    sget v0, Landroidx/biometric/R$string;->fingerprint_not_recognized:I

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    .line 877
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->sendFailureToClient()V

    return-void
.end method

.method onAuthenticationHelp(Ljava/lang/CharSequence;)V
    .locals 1

    .line 864
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 785
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method onCancelButtonPressed()V
    .locals 2

    .line 899
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 908
    :cond_1
    sget v0, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v1, 0xd

    .line 904
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 910
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 312
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 313
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->connectViewModel()V

    return-void
.end method

.method onDeviceCredentialButtonPressed()V
    .locals 0

    .line 890
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 318
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 322
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v1

    .line 325
    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 327
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setIgnoringCancel(Z)V

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 328
    invoke-interface {v1}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;

    invoke-direct {v2, v0}, Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;-><init>(Landroidx/biometric/BiometricViewModel;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 334
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 335
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isConfirmingDeviceCredential()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    :cond_0
    return-void
.end method

.method sendErrorAndDismiss(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1037
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 1038
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    return-void
.end method

.method showPromptForAuthentication()V
    .locals 2

    .line 501
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 502
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isPromptShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 503
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "BiometricFragment"

    const-string v1, "Not showing biometric prompt. Context is null."

    .line 504
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 508
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setPromptShowing(Z)V

    .line 509
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 511
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isKeyguardManagerNeededForBiometricAndCredential()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    goto :goto_0

    .line 513
    :cond_1
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->showFingerprintDialogForAuthentication()V

    goto :goto_0

    .line 516
    :cond_2
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->showBiometricPromptForAuthentication()V

    :cond_3
    :goto_0
    return-void
.end method
