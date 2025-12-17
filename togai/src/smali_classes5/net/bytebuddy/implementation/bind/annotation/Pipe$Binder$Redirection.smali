.class public Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Redirection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;,
        Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final FIELD_NAME_PREFIX:Ljava/lang/String; = "argument"


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final forwardingType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final serializableProxy:Z

.field private final sourceMethod:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Z)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->forwardingType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->sourceMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p3, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-boolean p4, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->serializableProxy:Z

    return-void
.end method

.method private static extractFields(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p0

    .line 257
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 259
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v3, v1, 0x1

    .line 260
    invoke-static {v1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->fieldName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static fieldName(I)Ljava/lang/String;
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "argument"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5

    .line 309
    invoke-interface {p2, p0}, Lnet/bytebuddy/implementation/Implementation$Context;->register(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 310
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x4

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v3, 0x0

    .line 311
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v4, v2, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->sourceMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 313
    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->allArgumentsOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 314
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

    .line 315
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
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->serializableProxy:Z

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->serializableProxy:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->forwardingType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->forwardingType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->sourceMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->sourceMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->forwardingType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->sourceMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->serializableProxy:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
    .locals 5

    iget-object p3, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->sourceMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 281
    invoke-static {p3}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->extractFields(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/util/LinkedHashMap;

    move-result-object p3

    .line 282
    new-instance v0, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v0, p2}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    sget-object p2, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 283
    invoke-virtual {v0, p2}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->forwardingType:Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    .line 284
    invoke-virtual {p2, v0, v1}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    .line 285
    invoke-interface {p2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    .line 286
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->serializableProxy:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-array p2, v0, [Ljava/lang/Class;

    const-class v2, Ljava/io/Serializable;

    aput-object v2, p2, v1

    goto :goto_0

    :cond_0
    new-array p2, v1, [Ljava/lang/Class;

    .line 287
    :goto_0
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object p1

    .line 288
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->forwardingType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {p2, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->sourceMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    const/4 v4, 0x0

    invoke-direct {p2, v2, v3, v4}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bind/annotation/Pipe$1;)V

    .line 289
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    new-array p2, v1, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    .line 290
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineConstructor([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$ConstructorCall;

    .line 291
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    .line 292
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/type/TypeDefinition;

    new-array v3, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v4, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v4, v3, v1

    invoke-interface {p1, v2, p3, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineField(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object p1

    goto :goto_1

    .line 295
    :cond_1
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method
