.class public Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;
.super Lnet/bytebuddy/dynamic/scaffold/inline/AbstractInliningDynamicTypeBuilder;
.source "RebaseDynamicTypeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/scaffold/inline/AbstractInliningDynamicTypeBuilder<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;",
            ")V"
        }
    .end annotation

    .line 90
    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;

    invoke-direct {v2}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;-><init>()V

    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;

    invoke-direct {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;-><init>()V

    .line 93
    invoke-virtual/range {p5 .. p5}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType$Differentiating;

    move-object/from16 v15, p12

    invoke-direct {v0, v15}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType$Differentiating;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_0
    move-object/from16 v15, p12

    sget-object v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;->INSTANCE:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    :goto_0
    move-object v4, v0

    sget-object v5, Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;->INSTANCE:Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    .line 90
    invoke-direct/range {v0 .. v19}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;",
            ")V"
        }
    .end annotation

    .line 155
    invoke-direct/range {p0 .. p18}, Lnet/bytebuddy/dynamic/scaffold/inline/AbstractInliningDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    move-object v0, p0

    move-object/from16 v1, p19

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/inline/AbstractInliningDynamicTypeBuilder;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/dynamic/scaffold/inline/AbstractInliningDynamicTypeBuilder;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 218
    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->methodRegistry:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 222
    invoke-static {v6, v7}, Lnet/bytebuddy/dynamic/scaffold/inline/InliningImplementationMatcher;->of(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/LatentMatcher;

    move-result-object v6

    .line 218
    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;

    move-result-object v7

    .line 223
    invoke-interface {v7}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 224
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 225
    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/method/MethodList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v3

    .line 226
    invoke-interface {v7}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v7}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodList;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    .line 223
    invoke-static {v1, v2, v3, v4, v5}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Default;->make(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Set;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    move-result-object v22

    .line 230
    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->fieldRegistry:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;

    .line 232
    invoke-interface {v7}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled;

    move-result-object v9

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, p2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .line 230
    invoke-static/range {v7 .. v22}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->forRebasing(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter;

    move-result-object v1

    .line 245
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy;->resolve()Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v1

    return-object v1
.end method

.method protected materialize(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 193
    new-instance v21, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;

    move-object/from16 v1, v21

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-object/from16 v19, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v20}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)V

    return-object v21
.end method
