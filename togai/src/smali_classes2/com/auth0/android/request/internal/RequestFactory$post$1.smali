.class public final Lcom/auth0/android/request/internal/RequestFactory$post$1;
.super Ljava/lang/Object;
.source "RequestFactory.kt"

# interfaces
.implements Lcom/auth0/android/request/JsonAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;)Lcom/auth0/android/request/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/auth0/android/request/JsonAdapter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/auth0/android/request/internal/RequestFactory$post$1",
        "Lcom/auth0/android/request/JsonAdapter;",
        "Ljava/lang/Void;",
        "fromJson",
        "reader",
        "Ljava/io/Reader;",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/internal/RequestFactory$post$1;->fromJson(Ljava/io/Reader;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/io/Reader;)Ljava/lang/Void;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
