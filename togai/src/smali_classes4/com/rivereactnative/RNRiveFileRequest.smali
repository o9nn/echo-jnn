.class public final Lcom/rivereactnative/RNRiveFileRequest;
.super Lcom/android/volley/Request;
.source "RiveReactNativeView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "[B>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0014J\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000e2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000fH\u0014R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/rivereactnative/RNRiveFileRequest;",
        "Lcom/android/volley/Request;",
        "",
        "url",
        "",
        "listener",
        "Lcom/android/volley/Response$Listener;",
        "errorListener",
        "Lcom/android/volley/Response$ErrorListener;",
        "(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V",
        "deliverResponse",
        "",
        "response",
        "parseNetworkResponse",
        "Lcom/android/volley/Response;",
        "Lcom/android/volley/NetworkResponse;",
        "rive-react-native_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "[B>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 874
    invoke-direct {p0, v0, p1, p3}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p2, p0, Lcom/rivereactnative/RNRiveFileRequest;->listener:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 870
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/rivereactnative/RNRiveFileRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rivereactnative/RNRiveFileRequest;->listener:Lcom/android/volley/Response$Listener;

    .line 876
    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "[B>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 880
    :try_start_0
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 881
    :cond_1
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    .line 880
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 883
    :goto_1
    new-instance v0, Lcom/android/volley/ParseError;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/android/volley/VolleyError;

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    .line 882
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    return-object p1
.end method
