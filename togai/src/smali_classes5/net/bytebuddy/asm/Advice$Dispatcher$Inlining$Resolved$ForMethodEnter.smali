.class public abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ForMethodEnter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithDiscardedEnterType;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithRetainedEnterType;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final namedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final prependLineNumber:Z


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/jar/asm/ClassReader;)V
    .locals 6
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
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            ")V"
        }
    .end annotation

    const/16 v0, 0xd

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    const/4 v1, 0x0

    .line 7522
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

    sget-object v2, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 7531
    invoke-static {p4}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForExitValue$Factory;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p4

    aput-object p4, v0, v1

    new-instance p4, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForLocalValue$Factory;

    invoke-direct {p4, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForLocalValue$Factory;-><init>(Ljava/util/Map;)V

    const/16 v1, 0x9

    aput-object p4, v0, v1

    new-instance p4, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;

    const-class v1, Lnet/bytebuddy/asm/Advice$Thrown;

    invoke-direct {p4, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;-><init>(Ljava/lang/Class;)V

    const/16 v1, 0xa

    aput-object p4, v0, v1

    new-instance p4, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;

    const-class v1, Lnet/bytebuddy/asm/Advice$Enter;

    invoke-direct {p4, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;-><init>(Ljava/lang/Class;)V

    const/16 v1, 0xb

    aput-object p4, v0, v1

    new-instance p4, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;

    const-class v1, Lnet/bytebuddy/asm/Advice$Return;

    invoke-direct {p4, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;-><init>(Ljava/lang/Class;)V

    const/16 v1, 0xc

    aput-object p4, v0, v1

    .line 7523
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-static {p4, p3}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 7536
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p3

    const-class p4, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-interface {p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p3

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$1700()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p4

    invoke-interface {p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    const-class p4, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 7537
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p3

    const-class p4, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-interface {p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p3

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$1800()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p4

    invoke-interface {p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    const-class p4, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p3, p4}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 7522
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassReader;)V

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    .line 7540
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    const-class p2, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$1900()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    const-class p2, Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/jar/asm/ClassReader;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .locals 6
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
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Z)",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 7560
    new-instance p5, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithRetainedEnterType;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithRetainedEnterType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/jar/asm/ClassReader;)V

    goto :goto_0

    :cond_0
    new-instance p5, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithDiscardedEnterType;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithDiscardedEnterType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/jar/asm/ClassReader;)V

    :goto_0
    return-object p5
.end method


# virtual methods
.method protected apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 12

    move-object v11, p0

    .line 7625
    iget-object v0, v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v1, p4

    .line 7628
    invoke-interface {v1, v0}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->bindEnter(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    move-result-object v4

    iget-object v0, v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v1, p5

    .line 7629
    invoke-interface {v1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->bindEnter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    move-result-object v5

    iget-object v0, v11, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v1, p6

    .line 7630
    invoke-interface {v1, v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->bindEnter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 7625
    invoke-virtual/range {v0 .. v10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->doApply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
    .locals 15

    move-object v13, p0

    .line 7587
    new-instance v14, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

    iget-object v0, v13, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;

    move-object/from16 v1, p9

    .line 7595
    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;->bind(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    move-result-object v10

    iget-object v0, v13, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;

    move-object/from16 v3, p2

    move-object/from16 v1, p10

    .line 7596
    invoke-interface {v0, v3, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;->bind(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

    move-result-object v11

    iget-object v12, v13, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->classReader:Lnet/bytebuddy/jar/asm/ClassReader;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;Lnet/bytebuddy/jar/asm/ClassReader;)V

    return-object v14
.end method

.method protected doApply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 16

    move-object/from16 v0, p0

    .line 7662
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 7663
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->offsetMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7664
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lnet/bytebuddy/asm/Advice$OffsetMapping;

    sget-object v15, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;->ENTER:Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-interface/range {v10 .. v15}, Lnet/bytebuddy/asm/Advice$OffsetMapping;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;

    move-result-object v2

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7670
    :cond_0
    new-instance v12, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;

    iget-object v8, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor$ForMethodEnter;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)V

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;->equals(Ljava/lang/Object;)Z

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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getNamedTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isPrependLineNumber()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    return v0
.end method

.method protected resolveInitializationTypes(Lnet/bytebuddy/asm/Advice$ArgumentHandler;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$ArgumentHandler;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    .line 7567
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    .line 7568
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7569
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->named(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
