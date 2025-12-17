.class public final Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

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
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 LocalAuthenticationModule.kt\nexpo/modules/localauthentication/LocalAuthenticationModule\n*L\n1#1,505:1\n8#2,4:506\n78#3,23:510\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n*L\n246#1:506,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10"
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

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 10

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 245
    aget-object p1, p1, v0

    .line 247
    move-object v3, p1

    check-cast v3, Lexpo/modules/localauthentication/AuthOptions;

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 510
    invoke-static {p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getCurrentActivity(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroid/app/Activity;

    move-result-object p1

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    if-nez v2, :cond_1

    .line 512
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p2, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 515
    invoke-static {p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getKeyguardManager(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroid/app/KeyguardManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const-string v0, "not_enrolled"

    const-string v1, "KeyguardManager#isDeviceSecure() returned false"

    .line 517
    invoke-static {p1, v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$createResponse(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 516
    invoke-interface {p2, p1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 525
    invoke-static {p1, v3}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 529
    invoke-virtual {p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;

    iget-object v1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$1$5$1;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    move-object p2, v8

    check-cast p2, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, v6

    move-object v6, v7

    move-object v7, p2

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_1
    return-void
.end method
