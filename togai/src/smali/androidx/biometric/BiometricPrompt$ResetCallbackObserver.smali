.class Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetCallbackObserver"
.end annotation


# instance fields
.field private final mViewModelRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/biometric/BiometricViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricViewModel;)V
    .locals 1

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;->mViewModelRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;->mViewModelRef:Ljava/lang/ref/WeakReference;

    .line 734
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;->mViewModelRef:Ljava/lang/ref/WeakReference;

    .line 735
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1}, Landroidx/biometric/BiometricViewModel;->resetClientCallback()V

    :cond_0
    return-void
.end method
