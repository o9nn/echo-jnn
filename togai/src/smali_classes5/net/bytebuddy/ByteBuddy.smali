.class public Lnet/bytebuddy/ByteBuddy;
.super Ljava/lang/Object;
.source "ByteBuddy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final BYTE_BUDDY_DEFAULT_PREFIX:Ljava/lang/String; = "ByteBuddy"

.field private static final BYTE_BUDDY_DEFAULT_SUFFIX:Ljava/lang/String; = "auxiliary"


# instance fields
.field protected final annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

.field protected final annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

.field protected final auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

.field protected final classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field protected final classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

.field protected final ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected final implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

.field protected final instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

.field protected final methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

.field protected final namingStrategy:Lnet/bytebuddy/NamingStrategy;

.field protected final typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

.field protected final visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 187
    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/ClassFileVersion;)V
    .locals 13

    .line 196
    new-instance v2, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;

    const-string v0, "ByteBuddy"

    invoke-direct {v2, v0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;)V

    new-instance v3, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$SuffixingRandom;

    const-string v0, "auxiliary"

    invoke-direct {v3, v0}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;)V

    sget-object v4, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    sget-object v5, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->ENABLED:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    sget-object v6, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    sget-object v7, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    sget-object v8, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    sget-object v9, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->ENABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    sget-object v10, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;->ALWAYS:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    sget-object v11, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;->CONSTANT_POOL_RETAINING:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

    new-instance v12, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    .line 207
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSynthetic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isDefaultFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-direct {v12, v0}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    move-object v0, p0

    move-object v1, p1

    .line 196
    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/NamingStrategy;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iput-object p2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iput-object p3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iput-object p4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iput-object p5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iput-object p6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iput-object p7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iput-object p8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iput-object p9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iput-object p10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iput-object p11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iput-object p12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    return-void
.end method


# virtual methods
.method public decorate(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 910
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->decorate(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public decorate(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 931
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->decorate(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public decorate(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 952
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v1, v0

    move-object v2, p1

    move-object v12, p2

    invoke-direct/range {v1 .. v12}, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v0

    .line 953
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot decorate array or primitive type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
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
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    check-cast p1, Lnet/bytebuddy/ByteBuddy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/ClassFileVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object p1, p1, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0}, Lnet/bytebuddy/ClassFileVersion;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/ByteBuddy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/ByteBuddy;"
        }
    .end annotation

    .line 1245
    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->ignore(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p1

    return-object p1
.end method

.method public ignore(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/ByteBuddy;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/ByteBuddy;"
        }
    .end annotation

    .line 1260
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    move-object v0, v13

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public makeAnnotation()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 598
    new-instance v13, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->ANNOTATION:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v1, v2}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v3, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lnet/bytebuddy/description/modifier/TypeManifestation;->ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 599
    invoke-static {v2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve()I

    move-result v2

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 598
    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array v2, v5, [Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;->ANNOTATION:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    .line 600
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v12, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v13
.end method

.method public makeEnumeration(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 643
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    const-class v1, Ljava/lang/Enum;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Lnet/bytebuddy/dynamic/TargetType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->parameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->build()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    .line 647
    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-interface {v6, v1}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v8, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v8, v7, v5

    sget-object v8, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v8, v7, v2

    sget-object v8, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    const/4 v15, 0x2

    aput-object v8, v7, v15

    .line 648
    invoke-static {v7}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v7

    invoke-virtual {v7}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve()I

    move-result v7

    .line 647
    invoke-interface {v4, v6, v7, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v13, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v14, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v5, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v18, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    move-object/from16 v16, v6

    move-object v6, v3

    move-object v15, v4

    move-object/from16 v17, v5

    invoke-direct/range {v6 .. v18}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    new-array v4, v2, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v5, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 661
    invoke-virtual {v3, v4}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->defineConstructor([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/reflect/Type;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v2

    invoke-interface {v3, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v3

    sget-object v5, Lnet/bytebuddy/implementation/SuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/SuperMethodCall;

    .line 662
    invoke-interface {v3, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    const-class v5, Lnet/bytebuddy/dynamic/TargetType;

    new-array v7, v4, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v8, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v8, v7, v6

    sget-object v8, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v8, v7, v2

    const-string v8, "valueOf"

    .line 663
    invoke-interface {v3, v8, v5, v7}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/reflect/Type;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 665
    invoke-interface {v3, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v3

    .line 666
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    .line 667
    invoke-static {v8}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v6

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v7}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v5, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    .line 666
    invoke-static {v1}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v1

    .line 668
    invoke-virtual {v1}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->withOwnType()Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v1

    filled-new-array {v6}, [I

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v1

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 669
    invoke-virtual {v1, v5, v7}, Lnet/bytebuddy/implementation/MethodCall;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v1

    .line 666
    invoke-interface {v3, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    const-class v3, [Lnet/bytebuddy/dynamic/TargetType;

    new-array v4, v4, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v5, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v5, v4, v6

    sget-object v5, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v5, v4, v2

    const-string v2, "values"

    .line 670
    invoke-interface {v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;-><init>(Ljava/util/List;)V

    .line 673
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    return-object v1

    .line 644
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Require at least one enumeration constant"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs makeEnumeration([Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .line 627
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeEnumeration(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makeInterface()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 442
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public makeInterface(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 463
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 551
    const-class v0, Ljava/lang/Object;

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    const/4 v1, 0x0

    sget-object v2, Lnet/bytebuddy/description/modifier/TypeManifestation;->INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makeInterface(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 507
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs makeInterface([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 485
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs makeInterface([Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 529
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makePackage(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 569
    new-instance v13, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".package-info"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1600

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0, p1, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v12, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v13
.end method

.method public rebase(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 776
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->rebase(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 797
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 812
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Ljava/lang/Package;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Package;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 877
    new-instance v0, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;-><init>(Ljava/lang/Package;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/PackageDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 890
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;-><init>(Lnet/bytebuddy/description/type/PackageDescription;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 833
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;->withRandomSuffix()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 848
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 851
    new-instance v16, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;

    iget-object v1, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    invoke-interface {v1, v13}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->represent(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object/from16 v1, v16

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v1 .. v15}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)V

    return-object v16

    .line 849
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot rebase array or primitive type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public redefine(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 698
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->redefine(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public redefine(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 720
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->redefine(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public redefine(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 742
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 745
    new-instance v15, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;

    iget-object v1, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    invoke-interface {v1, v13}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->represent(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v1, v15

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v15

    .line 743
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot redefine array or primitive type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 276
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 299
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 327
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 351
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 379
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->IMITATE_SUPER_CLASS_OPENING:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 405
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isFinal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isInterface()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 408
    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 409
    new-instance v5, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array v6, v4, [Lnet/bytebuddy/description/type/TypeDefinition;

    aput-object v1, v6, v3

    invoke-direct {v5, v6}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    .line 412
    new-instance v5, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v5}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    .line 414
    :goto_0
    new-instance v19, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v8

    invoke-interface {v7, v8}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v9, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v9, v8, v3

    sget-object v3, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v3, v8, v4

    .line 415
    invoke-static {v8}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getModifiers()I

    move-result v1

    invoke-virtual {v3, v1}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve(I)I

    move-result v1

    .line 414
    invoke-interface {v6, v7, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    .line 416
    invoke-interface {v1, v5}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v13, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v14, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v15, v0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v1, v0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v2, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object/from16 v6, v19

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, p2

    invoke-direct/range {v6 .. v18}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v19

    .line 406
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot subclass primitive, array or final types: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public with(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 978
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/NamingStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1002
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v2, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1200
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v10, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1222
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v11, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1154
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v8, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1132
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v7, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1178
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/implementation/Implementation$Context$Factory;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1106
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v6, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/implementation/attribute/AnnotationRetention;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1080
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1049
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v4, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    .line 1025
    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v3, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method
