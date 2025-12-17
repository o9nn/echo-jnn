.class public final enum Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;
.super Ljava/lang/Enum;
.source "BindingPriority.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/BindingPriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static resolve(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/BindingPriority;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority;

    invoke-interface {p0}, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority;->value()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    .line 56
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    .line 56
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 0

    .line 82
    invoke-interface {p2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    const-class p2, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;->resolve(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)I

    move-result p1

    .line 83
    invoke-interface {p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p2

    const-class p3, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority;

    invoke-interface {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p2

    invoke-static {p2}, Lnet/bytebuddy/implementation/bind/annotation/BindingPriority$Resolver;->resolve(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 85
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->AMBIGUOUS:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1

    :cond_0
    if-ge p1, p2, :cond_1

    .line 87
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1

    .line 89
    :cond_1
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p1
.end method
