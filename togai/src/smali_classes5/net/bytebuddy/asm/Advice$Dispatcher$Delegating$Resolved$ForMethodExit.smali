.class public abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ForMethodExit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit$WithoutExceptionHandler;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit$WithExceptionHandler;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final backupArguments:Z


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    const/4 v1, 0x0

    .line 9048
    sget-object v2, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved$Factory;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments$Factory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved$Factory;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStubValue;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStubValue;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 9056
    invoke-static {p4}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForEnterValue$Factory;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p4

    aput-object p4, v0, v1

    .line 9057
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p4

    invoke-static {p4}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForExitValue$Factory;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p4

    const/16 v1, 0x8

    aput-object p4, v0, v1

    new-instance p4, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForLocalValue$Factory;

    invoke-direct {p4, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForLocalValue$Factory;-><init>(Ljava/util/Map;)V

    const/16 p2, 0x9

    aput-object p4, v0, p2

    const/16 p2, 0xa

    sget-object p4, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForReturnValue$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForReturnValue$Factory;

    aput-object p4, v0, p2

    const/16 p2, 0xb

    .line 9060
    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p4

    aput-object p4, v0, p2

    .line 9049
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p3}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 9062
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p3

    const-class p4, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    invoke-interface {p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p3

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$2000()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p4

    invoke-interface {p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    const-class p4, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 9063
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p4

    const-class v0, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    invoke-interface {p4, v0}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p4

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$2100()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {p4, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p4

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p4, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/bytebuddy/description/type/TypeDescription;

    .line 9048
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    .line 9064
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    const-class p2, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$2200()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    const-class p2, Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->backupArguments:Z

    return-void
.end method

.method private doResolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
    .locals 12

    move-object v0, p0

    .line 9137
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->offsetMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9138
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->offsetMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lnet/bytebuddy/asm/Advice$OffsetMapping;

    .line 9139
    sget-object v9, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;->EXIT:Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v4 .. v9}, Lnet/bytebuddy/asm/Advice$OffsetMapping;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9145
    :cond_0
    new-instance v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;

    iget-object v2, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object v1, v11

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)V

    return-object v11
.end method

.method protected static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;"
        }
    .end annotation

    .line 9080
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    .line 9081
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    .line 9082
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$600()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 9083
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lnet/bytebuddy/description/type/TypeDescription;

    .line 9084
    const-class v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    invoke-interface {v6, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit$WithoutExceptionHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit$WithoutExceptionHandler;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit$WithExceptionHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit$WithExceptionHandler;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->backupArguments:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;

    iget-boolean p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->backupArguments:Z

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 9169
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentHandlerFactory()Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->backupArguments:Z

    if-eqz v0, :cond_0

    .line 9160
    sget-object v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->COPYING:Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->SIMPLE:Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->backupArguments:Z

    add-int/2addr v0, v1

    return v0
.end method

.method protected resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
    .locals 12

    move-object v11, p0

    .line 9100
    iget-object v0, v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 9105
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->getThrowable()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const-class v2, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    move-object/from16 v2, p6

    invoke-interface {v2, v0, v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->bindExit(Lnet/bytebuddy/description/method/MethodDescription;Z)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    move-result-object v6

    iget-object v0, v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v1, p7

    .line 9106
    invoke-interface {v1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    move-result-object v7

    iget-object v0, v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v1, p8

    .line 9107
    invoke-interface {v1, v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    move-result-object v8

    iget-object v0, v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;

    move-object/from16 v1, p9

    .line 9108
    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;->bind(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    move-result-object v9

    iget-object v0, v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;

    move-object v2, p2

    move-object/from16 v1, p10

    .line 9109
    invoke-interface {v0, p2, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;->bind(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 9100
    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->doResolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    move-result-object v0

    return-object v0
.end method
