.class Landroidx/biometric/BiometricFragment$2;
.super Ljava/lang/Object;
.source "BiometricFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/biometric/BiometricFragment;

.field final synthetic val$errorCode:I

.field final synthetic val$errorString:Ljava/lang/CharSequence;

.field final synthetic val$viewModel:Landroidx/biometric/BiometricViewModel;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;ILjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/BiometricFragment$2;->this$0:Landroidx/biometric/BiometricFragment;

    iput-object p2, p0, Landroidx/biometric/BiometricFragment$2;->val$viewModel:Landroidx/biometric/BiometricViewModel;

    iput p3, p0, Landroidx/biometric/BiometricFragment$2;->val$errorCode:I

    iput-object p4, p0, Landroidx/biometric/BiometricFragment$2;->val$errorString:Ljava/lang/CharSequence;

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/biometric/BiometricFragment$2;->val$viewModel:Landroidx/biometric/BiometricViewModel;

    .line 1103
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientCallback()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    iget v1, p0, Landroidx/biometric/BiometricFragment$2;->val$errorCode:I

    iget-object v2, p0, Landroidx/biometric/BiometricFragment$2;->val$errorString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
