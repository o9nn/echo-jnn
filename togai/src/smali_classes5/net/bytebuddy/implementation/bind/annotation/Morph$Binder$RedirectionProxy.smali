.class public Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;
.super Ljava/lang/Object;
.source "Morph.java"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RedirectionProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$MethodCall;,
        Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$InstanceFieldConstructor;,
        Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final FIELD_NAME:Ljava/lang/String; = "target"


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final morphingType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final serializableProxy:Z

.field private final specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Z)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->morphingType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    iput-object p4, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-boolean p5, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->serializableProxy:Z

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5

    .line 395
    invoke-interface {p2, p0}, Lnet/bytebuddy/implementation/Implementation$Context;->register(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 396
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x4

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v3, 0x0

    .line 397
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v4, v2, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    .line 399
    invoke-interface {v3}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    :goto_0
    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 402
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 403
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->serializableProxy:Z

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->serializableProxy:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->morphingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->morphingType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->morphingType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->serializableProxy:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
    .locals 2

    .line 367
    new-instance v0, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v0, p2}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    sget-object p2, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 368
    invoke-virtual {v0, p2}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->morphingType:Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    .line 369
    invoke-virtual {p2, v0, v1}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    .line 370
    invoke-interface {p2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    .line 371
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->serializableProxy:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const-class v1, Ljava/io/Serializable;

    aput-object v1, p2, v0

    goto :goto_0

    :cond_0
    new-array p2, v0, [Ljava/lang/Class;

    .line 372
    :goto_0
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object p1

    new-array p2, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    .line 373
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->defineConstructor([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 375
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 373
    :goto_1
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    .line 376
    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$StaticFieldConstructor;

    goto :goto_2

    :cond_2
    new-instance p2, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$InstanceFieldConstructor;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {p2, v0}, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$InstanceFieldConstructor;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    :goto_2
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    .line 379
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->morphingType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$MethodCall;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    sget-object v1, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->DEFAULT:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    .line 380
    invoke-interface {p3, v0, v1}, Lnet/bytebuddy/implementation/MethodAccessorFactory;->registerAccessorFor(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p3

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-direct {p2, p3, v0}, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$RedirectionProxy$MethodCall;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    .line 381
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method
