.class public final Lnet/openid/appauth/GrantTypeValues;
.super Ljava/lang/Object;
.source "GrantTypeValues.java"


# static fields
.field public static final AUTHORIZATION_CODE:Ljava/lang/String; = "authorization_code"

.field public static final IMPLICIT:Ljava/lang/String; = "implicit"

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This type is not intended to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
