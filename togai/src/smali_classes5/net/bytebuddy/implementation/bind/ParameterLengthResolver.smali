.class public final enum Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;
.super Ljava/lang/Enum;
.source "ParameterLengthResolver.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    .line 24
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    .line 24
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 0

    .line 37
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result p1

    .line 38
    invoke-interface {p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 40
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->AMBIGUOUS:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1

    :cond_0
    if-ge p1, p2, :cond_1

    .line 42
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1

    .line 44
    :cond_1
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1
.end method
