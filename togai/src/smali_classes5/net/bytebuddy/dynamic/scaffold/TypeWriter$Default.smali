.class public abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.super Ljava/lang/Object;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final DUMP_FOLDER:Ljava/lang/String;

.field private static final NO_REFERENCE:Ljava/lang/String;


# instance fields
.field protected final annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

.field protected final annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

.field protected final asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

.field protected final auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

.field protected final auxiliaryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation
.end field

.field protected final classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field protected final classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

.field protected final fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

.field protected final fields:Lnet/bytebuddy/description/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field protected final implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

.field protected final instrumentedMethods:Lnet/bytebuddy/description/method/MethodList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;"
        }
    .end annotation
.end field

.field protected final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field protected final loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

.field protected final methods:Lnet/bytebuddy/description/method/MethodList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;"
        }
    .end annotation
.end field

.field protected final typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

.field protected final typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

.field protected final typePool:Lnet/bytebuddy/pool/TypePool;

.field protected final typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1541
    :try_start_0
    new-instance v0, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v1, "net.bytebuddy.dump"

    invoke-direct {v0, v1}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->DUMP_FOLDER:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;",
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

    move-object v0, p0

    .line 1677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object v1, p2

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    move-object v1, p3

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    move-object v1, p4

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypes:Ljava/util/List;

    move-object v1, p5

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->fields:Lnet/bytebuddy/description/field/FieldList;

    move-object v1, p6

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->methods:Lnet/bytebuddy/description/method/MethodList;

    move-object v1, p7

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedMethods:Lnet/bytebuddy/description/method/MethodList;

    move-object v1, p8

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    move-object v1, p9

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-object v1, p10

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    move-object v1, p11

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    move-object/from16 v1, p14

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    move-object v1, p12

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    move-object v1, p13

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    move-object/from16 v1, p15

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    move-object/from16 v1, p16

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    move-object/from16 v1, p17

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    move-object/from16 v1, p18

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->NO_REFERENCE:Ljava/lang/String;

    return-object v0
.end method

.method public static forCreation(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter<",
            "TU;>;"
        }
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v2, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move-object/from16 v19, p12

    .line 1730
    new-instance v20, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;

    move-object/from16 v0, v20

    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 1735
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v6

    .line 1736
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;->getMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v7

    .line 1737
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;->getInstrumentedMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v8

    .line 1738
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;->getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    move-result-object v9

    .line 1739
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;->getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v10

    invoke-direct/range {v0 .. v19}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForCreation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;)V

    return-object v20
.end method

.method public static forDecoration(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter<",
            "TU;>;"
        }
    .end annotation

    .line 1909
    new-instance v15, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    new-instance v4, Lnet/bytebuddy/description/method/MethodList$Explicit;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lnet/bytebuddy/description/method/MethodList$Explicit;-><init>(Ljava/util/List;)V

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

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

    invoke-direct/range {v0 .. v14}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Ljava/util/List;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v15
.end method

.method public static forRebasing(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;",
            ")",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter<",
            "TU;>;"
        }
    .end annotation

    move-object/from16 v21, p0

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v2, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    move-object/from16 v23, p15

    .line 1850
    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    move-object/from16 v0, v24

    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 1853
    invoke-interface/range {p15 .. p15}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;->getAuxiliaryTypes()Ljava/util/List;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1854
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v5

    .line 1855
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v6

    .line 1856
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v7

    .line 1857
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    move-result-object v8

    .line 1858
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v9

    move-object/from16 p2, v0

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;

    move-object/from16 v22, v0

    move-object/from16 p3, v1

    move-object/from16 v1, p15

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;-><init>(Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v23}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;Lnet/bytebuddy/implementation/Implementation$Target$Factory;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)V

    return-object v24
.end method

.method public static forRedefinition(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter<",
            "TU;>;"
        }
    .end annotation

    move-object/from16 v21, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v2, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    .line 1787
    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    move-object/from16 v0, v24

    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 1791
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v5

    .line 1792
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v6

    .line 1793
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getInstrumentedMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v7

    .line 1794
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    move-result-object v8

    .line 1795
    invoke-interface/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v9

    sget-object v22, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;->LEVEL_TYPE:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    sget-object v23, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

    invoke-direct/range {v0 .. v23}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;Lnet/bytebuddy/implementation/Implementation$Target$Factory;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)V

    return-object v24
.end method


# virtual methods
.method protected abstract create(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;",
            ")",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default<",
            "TS;>.UnresolvedType;"
        }
    .end annotation
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/ClassFileVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->fields:Lnet/bytebuddy/description/field/FieldList;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->fields:Lnet/bytebuddy/description/field/FieldList;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->methods:Lnet/bytebuddy/description/method/MethodList;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->methods:Lnet/bytebuddy/description/method/MethodList;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedMethods:Lnet/bytebuddy/description/method/MethodList;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedMethods:Lnet/bytebuddy/description/method/MethodList;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    :cond_11
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    :cond_12
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    :cond_13
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v1

    :cond_14
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0}, Lnet/bytebuddy/ClassFileVersion;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->fields:Lnet/bytebuddy/description/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->methods:Lnet/bytebuddy/description/method/MethodList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedMethods:Lnet/bytebuddy/description/method/MethodList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    .line 1930
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;->injectedInto(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->create(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->DUMP_FOLDER:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v3, 0x0

    .line 1931
    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->getBinaryRepresentation()[B

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->dump(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Z[B)V

    .line 1932
    invoke-virtual {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->toDynamicType(Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method
