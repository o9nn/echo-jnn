.class public final enum Lcom/auth0/android/authentication/PasswordlessType;
.super Ljava/lang/Enum;
.source "PasswordlessType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/auth0/android/authentication/PasswordlessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/auth0/android/authentication/PasswordlessType;

.field public static final enum ANDROID_LINK:Lcom/auth0/android/authentication/PasswordlessType;

.field public static final enum CODE:Lcom/auth0/android/authentication/PasswordlessType;

.field public static final enum WEB_LINK:Lcom/auth0/android/authentication/PasswordlessType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/auth0/android/authentication/PasswordlessType;

    const-string v1, "WEB_LINK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/auth0/android/authentication/PasswordlessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/auth0/android/authentication/PasswordlessType;->WEB_LINK:Lcom/auth0/android/authentication/PasswordlessType;

    .line 13
    new-instance v1, Lcom/auth0/android/authentication/PasswordlessType;

    const-string v2, "ANDROID_LINK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/auth0/android/authentication/PasswordlessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/auth0/android/authentication/PasswordlessType;->ANDROID_LINK:Lcom/auth0/android/authentication/PasswordlessType;

    .line 14
    new-instance v2, Lcom/auth0/android/authentication/PasswordlessType;

    const-string v3, "CODE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/auth0/android/authentication/PasswordlessType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/auth0/android/authentication/PasswordlessType;->CODE:Lcom/auth0/android/authentication/PasswordlessType;

    filled-new-array {v0, v1, v2}, [Lcom/auth0/android/authentication/PasswordlessType;

    move-result-object v0

    sput-object v0, Lcom/auth0/android/authentication/PasswordlessType;->$VALUES:[Lcom/auth0/android/authentication/PasswordlessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/auth0/android/authentication/PasswordlessType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/auth0/android/authentication/PasswordlessType;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/auth0/android/authentication/PasswordlessType;

    return-object p0
.end method

.method public static values()[Lcom/auth0/android/authentication/PasswordlessType;
    .locals 1

    sget-object v0, Lcom/auth0/android/authentication/PasswordlessType;->$VALUES:[Lcom/auth0/android/authentication/PasswordlessType;

    .line 8
    invoke-virtual {v0}, [Lcom/auth0/android/authentication/PasswordlessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/auth0/android/authentication/PasswordlessType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    .line 18
    sget-object v0, Lcom/auth0/android/authentication/PasswordlessType$1;->$SwitchMap$com$auth0$android$authentication$PasswordlessType:[I

    invoke-virtual {p0}, Lcom/auth0/android/authentication/PasswordlessType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "code"

    return-object v0

    :cond_0
    const-string v0, "link_android"

    return-object v0

    :cond_1
    const-string v0, "link"

    return-object v0
.end method
