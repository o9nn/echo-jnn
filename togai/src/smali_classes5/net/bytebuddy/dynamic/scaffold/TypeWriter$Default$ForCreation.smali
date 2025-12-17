.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForCreation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default<",
        "TU;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    .line 5067
    invoke-direct/range {v0 .. v18}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;)V

    move-object/from16 v1, p4

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    return-void
.end method


# virtual methods
.method protected create(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;",
            ")",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default<",
            "TU;>.UnresolvedType;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 5090
    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeWriter(I)I

    move-result v10

    .line 5091
    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v1, v10, v3}, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;->resolve(ILnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/jar/asm/ClassWriter;

    move-result-object v1

    .line 5092
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    move-object/from16 v6, p1

    invoke-interface/range {v3 .. v8}, Lnet/bytebuddy/implementation/Implementation$Context$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    move-result-object v12

    .line 5097
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 5098
    invoke-static {v1, v5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->of(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v5

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->fields:Lnet/bytebuddy/description/field/FieldList;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methods:Lnet/bytebuddy/description/method/MethodList;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 5104
    invoke-interface {v6, v2}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeReader(I)I

    move-result v11

    move-object v6, v12

    .line 5097
    invoke-interface/range {v3 .. v11}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v2

    .line 5105
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v3}, Lnet/bytebuddy/ClassFileVersion;->getMinorMajorVersion()I

    move-result v14

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5106
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->getActualModifiers(Z)I

    move-result v15

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5107
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5108
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object v17

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5109
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5111
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v18

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5112
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v19

    move-object v13, v2

    .line 5105
    invoke-virtual/range {v13 .. v19}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5113
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5114
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    .line 5116
    :cond_1
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5118
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .line 5119
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v5

    .line 5120
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 5118
    invoke-virtual {v2, v4, v5, v3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5121
    :cond_2
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5122
    :cond_3
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5124
    :cond_4
    :goto_1
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5, v6}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 5125
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->fields:Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v3}, Lnet/bytebuddy/description/field/FieldList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/field/FieldDescription;

    .line 5126
    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    invoke-interface {v5, v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;->target(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;

    move-result-object v4

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v4, v2, v5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    goto :goto_2

    .line 5128
    :cond_5
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedMethods:Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    .line 5129
    invoke-interface {v5, v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;->target(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v4

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v4, v2, v12, v5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    goto :goto_3

    .line 5131
    :cond_6
    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-direct {v3, v4, v5, v6}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v12, v3, v2, v4}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->drain(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 5134
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5135
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    .line 5136
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    goto :goto_4

    .line 5139
    :cond_7
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 5141
    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .line 5142
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5143
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5144
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v6

    .line 5141
    invoke-virtual {v2, v4, v3, v5, v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 5145
    :cond_8
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5146
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 5147
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5148
    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5149
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v6

    .line 5146
    invoke-virtual {v2, v3, v4, v5, v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 5150
    :cond_9
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5151
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 5152
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v4

    .line 5153
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5154
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v6

    .line 5151
    invoke-virtual {v2, v3, v4, v5, v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5156
    :cond_a
    :goto_5
    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    .line 5157
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v5

    .line 5158
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->isMemberType()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5159
    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 5160
    :cond_b
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v6

    .line 5161
    :goto_7
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 5162
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 5163
    :cond_c
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 5164
    :goto_8
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v4

    .line 5157
    invoke-virtual {v2, v5, v6, v7, v4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    .line 5166
    :cond_d
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    .line 5167
    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->toByteArray()[B

    move-result-object v1

    invoke-interface {v12}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->getAuxiliaryTypes()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;[BLjava/util/List;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
