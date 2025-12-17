.class final Lcom/auth0/android/request/internal/BaseRequest$await$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/request/internal/BaseRequest;->await$suspendImpl(Lcom/auth0/android/request/internal/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "U",
        "Lcom/auth0/android/Auth0Exception;",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/auth0/android/request/internal/BaseRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/request/internal/BaseRequest<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/auth0/android/request/internal/BaseRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/request/internal/BaseRequest<",
            "TT;TU;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/auth0/android/request/internal/BaseRequest$await$2;->this$0:Lcom/auth0/android/request/internal/BaseRequest;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseRequest$await$2;->this$0:Lcom/auth0/android/request/internal/BaseRequest;

    .line 95
    invoke-virtual {v0}, Lcom/auth0/android/request/internal/BaseRequest;->execute()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
