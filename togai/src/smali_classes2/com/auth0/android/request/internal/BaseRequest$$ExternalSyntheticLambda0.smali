.class public final synthetic Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/auth0/android/request/internal/BaseRequest;

.field public final synthetic f$1:Lcom/auth0/android/callback/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/auth0/android/request/internal/BaseRequest;Lcom/auth0/android/callback/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda0;->f$0:Lcom/auth0/android/request/internal/BaseRequest;

    iput-object p2, p0, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda0;->f$1:Lcom/auth0/android/callback/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda0;->f$0:Lcom/auth0/android/request/internal/BaseRequest;

    iget-object v1, p0, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda0;->f$1:Lcom/auth0/android/callback/Callback;

    invoke-static {v0, v1}, Lcom/auth0/android/request/internal/BaseRequest;->$r8$lambda$fSBnh8An82tV7WlgZO_i73nAM64(Lcom/auth0/android/request/internal/BaseRequest;Lcom/auth0/android/callback/Callback;)V

    return-void
.end method
