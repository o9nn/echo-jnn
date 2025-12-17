.class public Lnet/bytebuddy/jar/asm/ClassWriter;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "ClassWriter.java"


# static fields
.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1


# instance fields
.field private accessFlags:I

.field private compute:I

.field private debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

.field private enclosingClassIndex:I

.field private enclosingMethodIndex:I

.field private firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

.field private firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

.field private innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

.field private interfaceCount:I

.field private interfaces:[I

.field private lastField:Lnet/bytebuddy/jar/asm/FieldWriter;

.field private lastMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

.field private lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

.field private nestHostClassIndex:I

.field private nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

.field private numberOfInnerClasses:I

.field private numberOfNestMemberClasses:I

.field private signatureIndex:I

.field private sourceFileIndex:I

.field private superClass:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

.field private thisClass:I

.field private version:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassReader;I)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassReader;I)V
    .locals 1

    const/high16 v0, 0x70000

    .line 237
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(I)V

    if-nez p1, :cond_0

    .line 238
    new-instance p1, Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-direct {p1, p0}, Lnet/bytebuddy/jar/asm/SymbolTable;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/ClassReader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_2

    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    :goto_1
    return-void
.end method

.method private getAttributePrototypes()[Lnet/bytebuddy/jar/asm/Attribute;
    .locals 2

    .line 705
    new-instance v0, Lnet/bytebuddy/jar/asm/Attribute$Set;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 706
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/Attribute$Set;->addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    :goto_0
    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/FieldWriter;->collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V

    .line 710
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/FieldWriter;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    check-cast v1, Lnet/bytebuddy/jar/asm/FieldWriter;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    :goto_1
    if-eqz v1, :cond_1

    .line 714
    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/MethodWriter;->collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V

    .line 715
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/MethodWriter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v1, Lnet/bytebuddy/jar/asm/MethodWriter;

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->toArray()[Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    return-object v0
.end method

.method private replaceAsmInstructions([BZ)[B
    .locals 3

    .line 676
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/ClassWriter;->getAttributePrototypes()[Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastField:Lnet/bytebuddy/jar/asm/FieldWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    const/4 v2, 0x0

    iput v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    iput v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfNestMemberClasses:I

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    .line 691
    new-instance v1, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v1, p1, v2, v2}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([BIZ)V

    if-eqz p2, :cond_1

    const/16 v2, 0x8

    :cond_1
    or-int/lit16 p1, v2, 0x100

    .line 692
    invoke-virtual {v1, p0, v0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;[Lnet/bytebuddy/jar/asm/Attribute;I)V

    .line 696
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/ClassWriter;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 983
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 946
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/ClassWriter;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 949
    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 955
    :try_start_1
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 959
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p1

    .line 962
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 965
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 969
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 970
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 971
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "java/lang/Object"

    return-object p1

    :catch_0
    move-exception p1

    .line 957
    new-instance v0, Ljava/lang/TypeNotPresentException;

    invoke-direct {v0, p2, p1}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p2

    .line 951
    new-instance v0, Ljava/lang/TypeNotPresentException;

    invoke-direct {v0, p1, p2}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public newClass(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 759
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public newConst(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 734
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public varargs newConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 860
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 897
    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 817
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 841
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 881
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 913
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public newMethodType(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 771
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public newModule(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 783
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 926
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public newPackage(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 795
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return p1
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 747
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public toByteArray()[B
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/bytebuddy/jar/asm/ClassTooLargeException;,
            Lnet/bytebuddy/jar/asm/MethodTooLargeException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 451
    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/FieldWriter;->computeFieldInfoSize()I

    move-result v6

    add-int/2addr v1, v6

    .line 452
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/FieldWriter;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    check-cast v3, Lnet/bytebuddy/jar/asm/FieldWriter;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 458
    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->computeMethodInfoSize()I

    move-result v7

    add-int/2addr v1, v7

    .line 459
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/MethodWriter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v3, Lnet/bytebuddy/jar/asm/MethodWriter;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    const-string v7, "InnerClasses"

    if-eqz v3, :cond_2

    .line 465
    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 466
    invoke-virtual {v3, v7}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingClassIndex:I

    const-string v9, "EnclosingMethod"

    if-eqz v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0xa

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 471
    invoke-virtual {v8, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_3
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    const/16 v10, 0x1000

    and-int/2addr v8, v10

    const-string v11, "Synthetic"

    const/16 v12, 0x31

    const v13, 0xffff

    if-eqz v8, :cond_4

    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    and-int/2addr v8, v13

    if-ge v8, v12, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 476
    invoke-virtual {v8, v11}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_4
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->signatureIndex:I

    const-string v14, "Signature"

    if-eqz v8, :cond_5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 481
    invoke-virtual {v8, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_5
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->sourceFileIndex:I

    const-string v15, "SourceFile"

    if-eqz v8, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 486
    invoke-virtual {v8, v15}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_6
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

    const-string v10, "SourceDebugExtension"

    if-eqz v8, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 490
    iget v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v8, v8, 0x6

    add-int/2addr v1, v8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 491
    invoke-virtual {v8, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_7
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    const/high16 v16, 0x20000

    and-int v8, v8, v16

    const-string v4, "Deprecated"

    if-eqz v8, :cond_8

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 496
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_8
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    if-eqz v8, :cond_9

    add-int/lit8 v3, v3, 0x1

    .line 501
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    :cond_9
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    const-string v12, "RuntimeInvisibleAnnotations"

    if-eqz v8, :cond_a

    add-int/lit8 v3, v3, 0x1

    .line 507
    invoke-virtual {v8, v12}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    :cond_a
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    const-string v13, "RuntimeVisibleTypeAnnotations"

    if-eqz v8, :cond_b

    add-int/lit8 v3, v3, 0x1

    .line 513
    invoke-virtual {v8, v13}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    :cond_b
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object/from16 v17, v13

    const-string v13, "RuntimeInvisibleTypeAnnotations"

    if-eqz v8, :cond_c

    add-int/lit8 v3, v3, 0x1

    .line 519
    invoke-virtual {v8, v13}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    :cond_c
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 522
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v8

    if-lez v8, :cond_d

    add-int/lit8 v3, v3, 0x1

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 524
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v8

    add-int/2addr v1, v8

    :cond_d
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    if-eqz v8, :cond_e

    .line 527
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/ModuleWriter;->getAttributeCount()I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    .line 528
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/ModuleWriter;->computeAttributesSize()I

    move-result v8

    add-int/2addr v1, v8

    :cond_e
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    move-object/from16 v18, v13

    const-string v13, "NestHost"

    if-eqz v8, :cond_f

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 533
    invoke-virtual {v8, v13}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_f
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    move-object/from16 v19, v13

    const-string v13, "NestMembers"

    if-eqz v8, :cond_10

    add-int/lit8 v3, v3, 0x1

    .line 537
    iget v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v8, v8, 0x8

    add-int/2addr v1, v8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 538
    invoke-virtual {v8, v13}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_10
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v8, :cond_11

    .line 541
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/Attribute;->getAttributeCount()I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    move/from16 v20, v3

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 542
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v3

    add-int/2addr v1, v3

    move/from16 v3, v20

    :cond_11
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 546
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->getConstantPoolLength()I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 547
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->getConstantPoolCount()I

    move-result v8

    move-object/from16 v20, v13

    const v13, 0xffff

    if-gt v8, v13, :cond_26

    .line 554
    new-instance v8, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>(I)V

    const v1, -0x35014542    # -8346975.0f

    .line 555
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v13, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    invoke-virtual {v1, v13}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 556
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->putConstantPool(Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    const v13, 0xffff

    and-int/2addr v1, v13

    const/16 v13, 0x31

    if-ge v1, v13, :cond_12

    const/16 v1, 0x1000

    goto :goto_3

    :cond_12
    const/4 v1, 0x0

    :goto_3
    iget v13, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    not-int v1, v1

    and-int/2addr v1, v13

    .line 558
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v13, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->thisClass:I

    invoke-virtual {v1, v13}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v13, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->superClass:I

    invoke-virtual {v1, v13}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    .line 559
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v1, 0x0

    :goto_4
    iget v13, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    if-ge v1, v13, :cond_13

    iget-object v13, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaces:[I

    .line 561
    aget v13, v13, v1

    invoke-virtual {v8, v13}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 563
    :cond_13
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    :goto_5
    if-eqz v1, :cond_14

    .line 566
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/FieldWriter;->putFieldInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 567
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/FieldWriter;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    check-cast v1, Lnet/bytebuddy/jar/asm/FieldWriter;

    goto :goto_5

    .line 569
    :cond_14
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-eqz v1, :cond_15

    .line 574
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->hasFrames()Z

    move-result v13

    or-int/2addr v5, v13

    .line 575
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions()Z

    move-result v13

    or-int/2addr v6, v13

    .line 576
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/MethodWriter;->putMethodInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 577
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/MethodWriter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v1, Lnet/bytebuddy/jar/asm/MethodWriter;

    goto :goto_6

    .line 580
    :cond_15
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 583
    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v7, 0x2

    add-int/2addr v3, v7

    .line 584
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfInnerClasses:I

    .line 585
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v7, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v7, v7, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v13, 0x0

    .line 586
    invoke-virtual {v1, v3, v13, v7}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_16
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingClassIndex:I

    if-eqz v1, :cond_17

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 590
    invoke-virtual {v1, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    const/4 v3, 0x4

    .line 591
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingClassIndex:I

    .line 592
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingMethodIndex:I

    .line 593
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_17
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    const/16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_18

    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    const v3, 0xffff

    and-int/2addr v1, v3

    const/16 v3, 0x31

    if-ge v1, v3, :cond_18

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 596
    invoke-virtual {v1, v11}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_18
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->signatureIndex:I

    if-eqz v1, :cond_19

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 600
    invoke-virtual {v1, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    const/4 v3, 0x2

    .line 601
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v7, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->signatureIndex:I

    .line 602
    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    :cond_19
    const/4 v3, 0x2

    :goto_7
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->sourceFileIndex:I

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 606
    invoke-virtual {v1, v15}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 607
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->sourceFileIndex:I

    .line 608
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1a
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1b

    .line 611
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 613
    invoke-virtual {v3, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    .line 614
    invoke-virtual {v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget-object v7, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v7, v7, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    const/4 v9, 0x0

    .line 615
    invoke-virtual {v3, v7, v9, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_8

    :cond_1b
    const/4 v9, 0x0

    :goto_8
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    and-int v1, v1, v16

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 618
    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1c
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_1d

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 622
    invoke-virtual {v3, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 621
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_1d
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_1e

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 626
    invoke-virtual {v2, v12}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 625
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_1e
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_1f

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object/from16 v3, v17

    .line 630
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 629
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_1f
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_20

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object/from16 v3, v18

    .line 634
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 633
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_20
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 636
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->putBootstrapMethods(Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    if-eqz v1, :cond_21

    .line 638
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/ModuleWriter;->putAttributes(Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_21
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    if-eqz v1, :cond_22

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object/from16 v2, v19

    .line 642
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x2

    .line 643
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    .line 644
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_22
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object/from16 v2, v20

    .line 648
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    .line 649
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfNestMemberClasses:I

    .line 650
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v4, 0x0

    .line 651
    invoke-virtual {v1, v2, v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_23
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_24

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 654
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_24
    if-eqz v6, :cond_25

    .line 659
    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    invoke-direct {v0, v1, v5}, Lnet/bytebuddy/jar/asm/ClassWriter;->replaceAsmInstructions([BZ)[B

    move-result-object v1

    return-object v1

    .line 661
    :cond_25
    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    return-object v1

    .line 549
    :cond_26
    new-instance v1, Lnet/bytebuddy/jar/asm/ClassTooLargeException;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Lnet/bytebuddy/jar/asm/ClassTooLargeException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    iput p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 262
    invoke-virtual {p2, p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->setMajorVersionAndClassName(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->thisClass:I

    if-eqz p4, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 264
    invoke-virtual {p2, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->signatureIndex:I

    :cond_0
    const/4 p2, 0x0

    if-nez p5, :cond_1

    move p3, p2

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 266
    invoke-virtual {p3, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p3

    iget p3, p3, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    :goto_0
    iput p3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->superClass:I

    if-eqz p6, :cond_2

    .line 267
    array-length p3, p6

    if-lez p3, :cond_2

    .line 268
    array-length p3, p6

    iput p3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    .line 269
    new-array p3, p3, [I

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaces:[I

    :goto_1
    iget p3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    if-ge p2, p3, :cond_2

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaces:[I

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 271
    aget-object p5, p6, p2

    invoke-virtual {p4, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p4

    iget p4, p4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    const/16 p2, 0x33

    if-lt p1, p2, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    :cond_3
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    .line 318
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 320
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p2, :cond_0

    .line 322
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    .line 325
    :cond_0
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public final visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 353
    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    return-void
.end method

.method public final visitEnd()V
    .locals 0

    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 8

    .line 398
    new-instance v7, Lnet/bytebuddy/jar/asm/FieldWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/FieldWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    if-nez p1, :cond_0

    iput-object v7, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastField:Lnet/bytebuddy/jar/asm/FieldWriter;

    .line 403
    iput-object v7, p1, Lnet/bytebuddy/jar/asm/FieldWriter;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    :goto_0
    iput-object v7, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastField:Lnet/bytebuddy/jar/asm/FieldWriter;

    return-object v7
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 378
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    .line 379
    iget v0, p1, Lnet/bytebuddy/jar/asm/Symbol;->info:I

    if-nez v0, :cond_3

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfInnerClasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfInnerClasses:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 381
    iget v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 382
    invoke-virtual {v2, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    :goto_0
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 383
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 384
    invoke-virtual {p2, p4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfInnerClasses:I

    .line 385
    iput p2, p1, Lnet/bytebuddy/jar/asm/Symbol;->info:I

    :cond_3
    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 9

    .line 415
    new-instance v8, Lnet/bytebuddy/jar/asm/MethodWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v7, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    move-object v0, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/MethodWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    if-nez p1, :cond_0

    iput-object v8, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    .line 420
    iput-object v8, p1, Lnet/bytebuddy/jar/asm/MethodWriter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    :goto_0
    iput-object v8, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    return-object v8
.end method

.method public final visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;
    .locals 3

    .line 292
    new-instance v0, Lnet/bytebuddy/jar/asm/ModuleWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 295
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 297
    invoke-virtual {v2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    :goto_0
    invoke-direct {v0, v1, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ModuleWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;III)V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    return-object v0
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 302
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    return-void
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfNestMemberClasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfNestMemberClasses:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 363
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 308
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingClassIndex:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 310
    invoke-virtual {p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingMethodIndex:I

    :cond_0
    return-void
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 282
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->sourceFileIndex:I

    :cond_0
    if-eqz p2, :cond_1

    .line 285
    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p1, p2, v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->encodeUtf8(Ljava/lang/String;II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1
    return-void
.end method

.method public final visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 335
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    .line 337
    invoke-static {p1, v0}, Lnet/bytebuddy/jar/asm/TypeReference;->putTarget(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 338
    invoke-static {p2, v0}, Lnet/bytebuddy/jar/asm/TypePath;->put(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 340
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p4, :cond_0

    .line 342
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    .line 345
    :cond_0
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method
