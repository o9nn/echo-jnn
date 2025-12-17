.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithDecorationOnly"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$LazyFieldList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Ljava/util/List;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;",
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
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v20, p14

    .line 4831
    sget-object v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

    new-instance v7, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$LazyFieldList;

    move-object v5, v7

    move-object/from16 v8, p1

    invoke-direct {v7, v8}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$LazyFieldList;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v8, Lnet/bytebuddy/description/method/MethodList$Empty;

    move-object v7, v8

    invoke-direct {v8}, Lnet/bytebuddy/description/method/MethodList$Empty;-><init>()V

    sget-object v8, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    sget-object v9, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    invoke-direct/range {v0 .. v20}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-void
.end method


# virtual methods
.method protected writeTo(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 6

    .line 4861
    invoke-interface {p2}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;->isDefined()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4864
    new-instance p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;II)V

    return-object p2

    .line 4862
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot apply a type initializer for a decoration"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
