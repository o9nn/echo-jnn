.class Lnet/openid/appauth/AuthState$1;
.super Ljava/lang/Object;
.source "AuthState.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/openid/appauth/AuthState;->performActionWithFreshTokens(Lnet/openid/appauth/AuthorizationService;Lnet/openid/appauth/ClientAuthentication;Ljava/util/Map;Lnet/openid/appauth/Clock;Lnet/openid/appauth/AuthState$AuthStateAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/openid/appauth/AuthState;


# direct methods
.method constructor <init>(Lnet/openid/appauth/AuthState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "response",
            "ex"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    .line 589
    invoke-virtual {v0, p1, p2}, Lnet/openid/appauth/AuthState;->update(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    const/4 v0, 0x0

    .line 596
    invoke-static {p2, v0}, Lnet/openid/appauth/AuthState;->access$002(Lnet/openid/appauth/AuthState;Z)Z

    iget-object p2, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    .line 597
    invoke-virtual {p2}, Lnet/openid/appauth/AuthState;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    .line 598
    invoke-virtual {v0}, Lnet/openid/appauth/AuthState;->getIdToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v0, p2

    move-object p2, v1

    :goto_0
    iget-object v2, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    .line 605
    invoke-static {v2}, Lnet/openid/appauth/AuthState;->access$100(Lnet/openid/appauth/AuthState;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    .line 606
    invoke-static {v3}, Lnet/openid/appauth/AuthState;->access$200(Lnet/openid/appauth/AuthState;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/openid/appauth/AuthState$1;->this$0:Lnet/openid/appauth/AuthState;

    .line 607
    invoke-static {v4, p1}, Lnet/openid/appauth/AuthState;->access$202(Lnet/openid/appauth/AuthState;Ljava/util/List;)Ljava/util/List;

    .line 608
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/openid/appauth/AuthState$AuthStateAction;

    .line 610
    invoke-interface {v2, p2, v1, v0}, Lnet/openid/appauth/AuthState$AuthStateAction;->execute(Ljava/lang/String;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 608
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
