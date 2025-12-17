.class final Lexpo/modules/localauthentication/LocalAuthenticationModule$biometricManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LocalAuthenticationModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/biometric/BiometricManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/biometric/BiometricManager;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;


# direct methods
.method constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$biometricManager$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/biometric/BiometricManager;
    .locals 1

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$biometricManager$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 144
    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getContext(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule$biometricManager$2;->invoke()Landroidx/biometric/BiometricManager;

    move-result-object v0

    return-object v0
.end method
