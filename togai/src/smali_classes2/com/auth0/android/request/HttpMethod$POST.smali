.class public final Lcom/auth0/android/request/HttpMethod$POST;
.super Lcom/auth0/android/request/HttpMethod;
.source "HttpMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/android/request/HttpMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "POST"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/auth0/android/request/HttpMethod$POST;",
        "Lcom/auth0/android/request/HttpMethod;",
        "()V",
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


# static fields
.field public static final INSTANCE:Lcom/auth0/android/request/HttpMethod$POST;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/auth0/android/request/HttpMethod$POST;

    invoke-direct {v0}, Lcom/auth0/android/request/HttpMethod$POST;-><init>()V

    sput-object v0, Lcom/auth0/android/request/HttpMethod$POST;->INSTANCE:Lcom/auth0/android/request/HttpMethod$POST;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/auth0/android/request/HttpMethod;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
