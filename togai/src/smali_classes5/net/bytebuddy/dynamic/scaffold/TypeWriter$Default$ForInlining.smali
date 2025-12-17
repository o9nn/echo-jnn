.class public abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForInlining"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;
    }
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


# static fields
.field private static final IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

.field private static final IGNORE_FIELD:Lnet/bytebuddy/jar/asm/FieldVisitor;

.field private static final IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;


# instance fields
.field protected final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

.field protected final originalType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V
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
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 3361
    invoke-direct/range {p0 .. p18}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;Ljava/util/List;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;)V

    move-object/from16 v1, p19

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v1, p20

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    return-void
.end method

.method static synthetic access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object v0
.end method

.method static synthetic access$500()Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->IGNORE_FIELD:Lnet/bytebuddy/jar/asm/FieldVisitor;

    return-object v0
.end method

.method static synthetic access$600()Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-object v0
.end method


# virtual methods
.method protected create(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;",
            ")",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default<",
            "TU;>.UnresolvedType;"
        }
    .end annotation

    .line 3386
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeWriter(I)I

    move-result v6

    .line 3387
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->mergeReader(I)I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 3388
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v1

    .line 3389
    sget-object v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->DUMP_FOLDER:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->dump(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Z[B)V

    .line 3390
    invoke-static {v1}, Lnet/bytebuddy/utility/OpenedClassReader;->of([B)Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v1

    .line 3391
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v2, v6, v3, v1}, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;->resolve(ILnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/jar/asm/ClassReader;)Lnet/bytebuddy/jar/asm/ClassWriter;

    move-result-object v8

    .line 3392
    new-instance v9, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

    invoke-direct {v9}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;-><init>()V

    .line 3393
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-static {v8, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->of(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move-object v5, v9

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->writeTo(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;II)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;I)V

    .line 3398
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;

    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v9}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;->getAuxiliaryTypes()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;[BLjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3400
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The class file could not be written"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->originalType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected abstract writeTo(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
.end method
