.class public interface abstract Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;
.super Ljava/lang/Object;
.source "TargetMethodAnnotationDrivenBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParameterBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFieldBinding;,
        Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    const/4 v1, 0x0

    .line 164
    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/Argument$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Argument$Binder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/Origin$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Origin$Binder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/This$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/This$Binder;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Super$Binder;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/Default$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Default$Binder;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/SuperCall$Binder;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/DefaultCall$Binder;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/SuperMethod$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/SuperMethod$Binder;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/StubValue$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/StubValue$Binder;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/Empty$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Empty$Binder;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;->DEFAULTS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;",
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
.end method

.method public abstract getHandledType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method
