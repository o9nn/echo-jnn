.class public final Lcom/auth0/android/request/AuthenticationRequest$DefaultImpls;
.super Ljava/lang/Object;
.source "AuthenticationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/android/request/AuthenticationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic await(Lcom/auth0/android/request/AuthenticationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    .line 11
    check-cast p0, Lcom/auth0/android/request/Request;

    invoke-static {p0, p1}, Lcom/auth0/android/request/Request$DefaultImpls;->await(Lcom/auth0/android/request/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
