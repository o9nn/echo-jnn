.class public final Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/app/Activity;",
        "Lexpo/modules/kotlin/events/OnActivityResultPayload;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder$OnActivityResult$1\n+ 2 LocalAuthenticationModule.kt\nexpo/modules/localauthentication/LocalAuthenticationModule\n*L\n1#1,143:1\n107#2,26:144\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "sender",
        "Landroid/app/Activity;",
        "payload",
        "Lexpo/modules/kotlin/events/OnActivityResultPayload;",
        "invoke",
        "expo/modules/kotlin/modules/ModuleDefinitionBuilder$OnActivityResult$1"
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
.method public constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, Landroid/app/Activity;

    check-cast p2, Lexpo/modules/kotlin/events/OnActivityResultPayload;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V
    .locals 3

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component1()I

    move-result v0

    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component2()I

    move-result v1

    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component3()Landroid/content/Intent;

    move-result-object p2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const/4 p1, -0x1

    const/4 p2, 0x0

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 147
    invoke-static {p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v1, 0x3

    invoke-static {v0, p2, p2, v1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->createResponse$default(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 149
    invoke-static {p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const-string v1, "user_cancel"

    const-string v2, "Device Credentials canceled"

    .line 150
    invoke-static {v0, v1, v2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$createResponse(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 149
    invoke-interface {p1, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v0, 0x0

    .line 157
    invoke-static {p1, v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthenticating$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 158
    invoke-static {p1, v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 159
    invoke-static {p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/biometric/BiometricPrompt;)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 160
    invoke-static {p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/kotlin/Promise;)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 161
    invoke-static {p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;)V

    goto :goto_1

    .line 162
    :cond_2
    instance-of v2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_3

    .line 166
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v2, "androidx.biometric.BiometricFragment"

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 167
    invoke-virtual {p1, v0, v1, p2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method
