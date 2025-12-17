.class public interface abstract Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;
.super Ljava/lang/Object;
.source "MethodDelegationBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AmbiguityResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Compound;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;,
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 787
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Compound;

    const/4 v1, 0x5

    new-array v1, v1, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    const/4 v2, 0x0

    sget-object v3, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/DeclaringTypeResolver;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodNameEqualityResolver;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/ParameterLengthResolver;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Compound;-><init>([Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;->DEFAULT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    return-void
.end method


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
.end method
