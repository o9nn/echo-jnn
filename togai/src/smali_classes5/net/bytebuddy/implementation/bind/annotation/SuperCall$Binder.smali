.class public final enum Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;
.super Ljava/lang/Enum;
.source "SuperCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/SuperCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Binder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
        "Lnet/bytebuddy/implementation/bind/annotation/SuperCall;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    .line 78
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    .line 78
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    return-object v0
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/SuperCall;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
            "*>;"
        }
    .end annotation

    .line 101
    invoke-interface {p3}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p5

    invoke-interface {p5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p5

    .line 102
    const-class p6, Ljava/lang/Runnable;

    invoke-interface {p5, p6}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p6

    if-nez p6, :cond_1

    const-class p6, Ljava/util/concurrent/Callable;

    invoke-interface {p5, p6}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p6

    if-nez p6, :cond_1

    const-class p6, Ljava/lang/Object;

    invoke-interface {p5, p6}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "A super method call proxy can only be assigned to Runnable or Callable types: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_1
    :goto_0
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 105
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/SuperCall;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bind/annotation/SuperCall;->nullIfImpossible()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;

    sget-object p2, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    invoke-direct {p1, p2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    :goto_1
    return-object p1

    .line 109
    :cond_3
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/implementation/bind/annotation/SuperCall;

    invoke-interface {p3}, Lnet/bytebuddy/implementation/bind/annotation/SuperCall;->fallbackToDefault()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 110
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object p2

    invoke-interface {p4, p2}, Lnet/bytebuddy/implementation/Implementation$Target;->invokeDominant(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p2

    goto :goto_2

    .line 111
    :cond_4
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object p2

    invoke-interface {p4, p2}, Lnet/bytebuddy/implementation/Implementation$Target;->invokeSuper(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p2

    .line 113
    :goto_2
    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->isValid()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 114
    new-instance p3, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/SuperCall;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bind/annotation/SuperCall;->serializableProxy()Z

    move-result p1

    invoke-direct {p3, p2, p1}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;-><init>(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Z)V

    goto :goto_3

    .line 115
    :cond_5
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/SuperCall;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bind/annotation/SuperCall;->nullIfImpossible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 116
    sget-object p3, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    .line 120
    :goto_3
    new-instance p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;

    invoke-direct {p1, p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p1

    .line 118
    :cond_6
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    return-object p1
.end method

.method public getHandledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/implementation/bind/annotation/SuperCall;",
            ">;"
        }
    .end annotation

    .line 89
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/SuperCall;

    return-object v0
.end method
