.class public final enum Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;
.super Ljava/lang/Enum;
.source "MethodNameEqualityResolver.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    .line 29
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    .line 29
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 1

    .line 42
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 43
    invoke-interface {p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 45
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    :goto_0
    return-object p1

    .line 47
    :cond_1
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->AMBIGUOUS:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1
.end method
