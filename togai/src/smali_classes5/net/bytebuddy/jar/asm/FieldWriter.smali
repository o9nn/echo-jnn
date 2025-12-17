.class final Lnet/bytebuddy/jar/asm/FieldWriter;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "FieldWriter.java"


# instance fields
.field private final accessFlags:I

.field private constantValueIndex:I

.field private final descriptorIndex:I

.field private firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private final nameIndex:I

.field private signatureIndex:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/high16 v0, 0x70000

    .line 127
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(I)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iput p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    .line 130
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->nameIndex:I

    .line 131
    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->descriptorIndex:I

    if-eqz p5, :cond_0

    .line 133
    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    :cond_0
    if-eqz p6, :cond_1

    .line 136
    invoke-virtual {p1, p6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    :cond_1
    return-void
.end method


# virtual methods
.method final collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 344
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method computeFieldInfoSize()I
    .locals 3

    iget v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v1, "ConstantValue"

    .line 208
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 213
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v1

    const/16 v2, 0x31

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Synthetic"

    .line 215
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_1
    iget v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Signature"

    .line 220
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Deprecated"

    .line 226
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_3
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_4

    const-string v2, "RuntimeVisibleAnnotations"

    .line 231
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_5

    const-string v2, "RuntimeInvisibleAnnotations"

    .line 236
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_6

    const-string v2, "RuntimeVisibleTypeAnnotations"

    .line 241
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_7

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    .line 246
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 250
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method putFieldInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 262
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v1, 0x1000

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget v5, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    not-int v4, v4

    and-int/2addr v4, v5

    .line 265
    invoke-virtual {p1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v4

    iget v5, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->nameIndex:I

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v4

    iget v5, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->descriptorIndex:I

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iget v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    iget v5, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    :cond_7
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    :cond_8
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v4, :cond_9

    add-int/lit8 v3, v3, 0x1

    :cond_9
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v4, :cond_a

    .line 294
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Attribute;->getAttributeCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 296
    :cond_a
    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    const/4 v4, 0x2

    if-eqz v3, :cond_b

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v6, "ConstantValue"

    .line 301
    invoke-virtual {v3, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    .line 302
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget v6, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    .line 303
    invoke-virtual {v3, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_b
    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v1, "Synthetic"

    .line 306
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_c
    iget v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v1, "Signature"

    .line 310
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    .line 312
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_d
    iget v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_e

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v1, "Deprecated"

    .line 315
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_e
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 319
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    .line 318
    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_f
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "RuntimeInvisibleAnnotations"

    .line 323
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    .line 322
    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_10
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    .line 327
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    .line 326
    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_11
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    .line 331
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    .line 330
    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_12
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 334
    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_13
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    .line 148
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 150
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p2, :cond_0

    .line 152
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    .line 155
    :cond_0
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 183
    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 165
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    .line 167
    invoke-static {p1, v0}, Lnet/bytebuddy/jar/asm/TypeReference;->putTarget(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 168
    invoke-static {p2, v0}, Lnet/bytebuddy/jar/asm/TypePath;->put(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 170
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p4, :cond_0

    .line 172
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    .line 175
    :cond_0
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method
