.class public final synthetic Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/biometric/BiometricFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/biometric/BiometricFragment;

    iput p2, p0, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/biometric/BiometricFragment;

    iget v1, p0, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/biometric/BiometricFragment;->lambda$onAuthenticationError$7$androidx-biometric-BiometricFragment(ILjava/lang/CharSequence;)V

    return-void
.end method
