.class final Lnet/bytebuddy/jar/asm/MethodWriter;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "MethodWriter.java"


# static fields
.field static final COMPUTE_ALL_FRAMES:I = 0x4

.field static final COMPUTE_INSERTED_FRAMES:I = 0x3

.field static final COMPUTE_MAX_STACK_AND_LOCAL:I = 0x1

.field static final COMPUTE_MAX_STACK_AND_LOCAL_FROM_FRAMES:I = 0x2

.field static final COMPUTE_NOTHING:I

.field private static final NA:I

.field private static final STACK_SIZE_DELTA:[I


# instance fields
.field private final accessFlags:I

.field private final code:Lnet/bytebuddy/jar/asm/ByteVector;

.field private final compute:I

.field private currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field private currentFrame:[I

.field private currentLocals:I

.field private defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

.field private final descriptor:Ljava/lang/String;

.field private final descriptorIndex:I

.field private final exceptionIndexTable:[I

.field private firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field private firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private firstHandler:Lnet/bytebuddy/jar/asm/Handler;

.field private hasAsmInstructions:Z

.field private hasSubroutines:Z

.field private invisibleAnnotableParameterCount:I

.field private lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field private lastBytecodeOffset:I

.field private lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastHandler:Lnet/bytebuddy/jar/asm/Handler;

.field private lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

.field private lineNumberTableLength:I

.field private localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

.field private localVariableTableLength:I

.field private localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

.field private localVariableTypeTableLength:I

.field private maxLocals:I

.field private maxRelativeStackSize:I

.field private maxStack:I

.field private final name:Ljava/lang/String;

.field private final nameIndex:I

.field private final numberOfExceptions:I

.field private parameters:Lnet/bytebuddy/jar/asm/ByteVector;

.field private parametersCount:I

.field private previousFrame:[I

.field private previousFrameOffset:I

.field private relativeStackSize:I

.field private final signatureIndex:I

.field private sourceLength:I

.field private sourceOffset:I

.field private stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

.field private stackMapTableNumberOfEntries:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

.field private visibleAnnotableParameterCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x0
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3
        -0x4
        -0x3
        -0x4
        -0x3
        -0x3
        -0x3
        -0x3
        -0x1
        -0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x0
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x1
        0x0
        0x1
        -0x1
        -0x1
        0x0
        0x0
        0x1
        0x1
        -0x1
        0x0
        -0x1
        0x0
        0x0
        0x0
        -0x3
        -0x1
        -0x1
        -0x3
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        0x0
        0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    const/high16 v0, 0x70000

    .line 595
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(I)V

    .line 320
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v0, "<init>"

    .line 597
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    .line 598
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->nameIndex:I

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->name:Ljava/lang/String;

    .line 600
    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptorIndex:I

    iput-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    const/4 p3, 0x0

    if-nez p5, :cond_1

    move p5, p3

    goto :goto_1

    .line 602
    :cond_1
    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p5

    :goto_1
    iput p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-eqz p6, :cond_2

    .line 603
    array-length p5, p6

    if-lez p5, :cond_2

    .line 604
    array-length p5, p6

    iput p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    .line 605
    new-array p5, p5, [I

    iput-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    :goto_2
    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-ge p3, p5, :cond_3

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    .line 607
    aget-object v0, p6, p3

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    aput v0, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    :cond_3
    iput p7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz p7, :cond_5

    .line 616
    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    .line 623
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 624
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_5
    return-void
.end method

.method private addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1789
    new-instance v1, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v1, v0, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    return-void
.end method

.method private computeAllFrames()V
    .locals 11

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    :goto_0
    const-string v1, "java/lang/Throwable"

    if-eqz v0, :cond_2

    .line 1569
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1571
    invoke-static {v2, v1}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromInternalName(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)I

    move-result v1

    .line 1573
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Handler;->handlerPc:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v2

    .line 1574
    iget-short v3, v2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, v2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1576
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Handler;->startPc:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v3

    .line 1577
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Handler;->endPc:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v4

    :goto_2
    if-eq v3, v4, :cond_1

    .line 1579
    new-instance v5, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v6, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v5, v1, v2, v6}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v5, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    .line 1581
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_2

    .line 1583
    :cond_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Handler;->nextHandler:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1587
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 1588
    invoke-virtual {v0, v2, v3, v4, v5}, Lnet/bytebuddy/jar/asm/Frame;->setInputFrameFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V

    .line 1589
    invoke-virtual {v0, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1598
    sget-object v2, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    iput-object v2, v0, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    const/4 v2, 0x0

    move v3, v2

    .line 1600
    :goto_3
    sget-object v4, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    if-eq v0, v4, :cond_6

    .line 1603
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    const/4 v5, 0x0

    .line 1604
    iput-object v5, v0, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 1606
    iget-short v5, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    iput-short v5, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1608
    iget-object v5, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/Frame;->getInputStackSize()I

    move-result v5

    iget-short v6, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    add-int/2addr v5, v6

    if-le v5, v3, :cond_3

    move v3, v5

    .line 1613
    :cond_3
    iget-object v5, v0, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    :goto_4
    if-eqz v5, :cond_5

    .line 1615
    iget-object v6, v5, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v6

    .line 1616
    iget-object v7, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v9, v6, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget v10, v5, Lnet/bytebuddy/jar/asm/Edge;->info:I

    .line 1617
    invoke-virtual {v7, v8, v9, v10}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/Frame;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1618
    iget-object v7, v6, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    if-nez v7, :cond_4

    .line 1621
    iput-object v4, v6, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    move-object v4, v6

    .line 1624
    :cond_4
    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_4

    :cond_5
    move-object v0, v4

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :goto_5
    if-eqz v0, :cond_b

    .line 1633
    iget-short v4, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    const/16 v5, 0xa

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    .line 1635
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v4, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    .line 1637
    :cond_7
    iget-short v4, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_a

    .line 1639
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1640
    iget v5, v0, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    if-nez v4, :cond_8

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1641
    iget v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    goto :goto_6

    :cond_8
    iget v6, v4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    :goto_6
    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_a

    move v8, v5

    :goto_7
    if-ge v8, v6, :cond_9

    iget-object v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1645
    iget-object v9, v9, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    aput-byte v2, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1647
    iget-object v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    const/16 v9, -0x41

    aput-byte v9, v8, v6

    .line 1650
    invoke-virtual {p0, v5, v2, v7}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameStart(III)I

    move-result v5

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1652
    invoke-static {v8, v1}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromInternalName(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v5

    .line 1653
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameEnd()V

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1655
    invoke-static {v5, v0, v4}, Lnet/bytebuddy/jar/asm/Handler;->removeRange(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Handler;

    move-result-object v4

    iput-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1657
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1660
    :cond_a
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_5

    :cond_b
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    return-void
.end method

.method private computeMaxStackAndLocal()V
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    :goto_0
    const v1, 0x7fffffff

    if-eqz v0, :cond_2

    .line 1671
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Handler;->handlerPc:Lnet/bytebuddy/jar/asm/Label;

    .line 1672
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Handler;->startPc:Lnet/bytebuddy/jar/asm/Label;

    .line 1673
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Handler;->endPc:Lnet/bytebuddy/jar/asm/Label;

    :goto_1
    if-eq v3, v4, :cond_1

    .line 1676
    iget-short v5, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_0

    .line 1677
    new-instance v5, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v6, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v5, v1, v2, v6}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v5, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_2

    .line 1683
    :cond_0
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    new-instance v6, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v7, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v7, v7, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v7, v7, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v6, v1, v2, v7}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v6, v5, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    .line 1687
    :goto_2
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    .line 1689
    :cond_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Handler;->nextHandler:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasSubroutines:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1697
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/Label;->markSubroutine(S)V

    move v0, v2

    move v3, v0

    :goto_3
    if-gt v0, v3, :cond_5

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :goto_4
    if-eqz v4, :cond_4

    .line 1703
    iget-short v5, v4, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    iget-short v5, v4, Lnet/bytebuddy/jar/asm/Label;->subroutineId:S

    if-ne v5, v0, :cond_3

    .line 1705
    iget-object v5, v4, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    .line 1706
    iget-short v6, v5, Lnet/bytebuddy/jar/asm/Label;->subroutineId:S

    if-nez v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    .line 1708
    invoke-virtual {v5, v3}, Lnet/bytebuddy/jar/asm/Label;->markSubroutine(S)V

    .line 1711
    :cond_3
    iget-object v4, v4, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :goto_5
    if-eqz v0, :cond_7

    .line 1719
    iget-short v3, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 1722
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    .line 1723
    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/Label;->addSubroutineRetSuccessors(Lnet/bytebuddy/jar/asm/Label;)V

    .line 1725
    :cond_6
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1734
    sget-object v3, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    iput-object v3, v0, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    .line 1736
    :cond_8
    sget-object v4, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    if-eq v0, v4, :cond_d

    .line 1741
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 1743
    iget-short v5, v0, Lnet/bytebuddy/jar/asm/Label;->inputStackSize:S

    .line 1744
    iget-short v6, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    add-int/2addr v6, v5

    if-le v6, v3, :cond_9

    move v3, v6

    .line 1751
    :cond_9
    iget-object v6, v0, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    .line 1752
    iget-short v0, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 1757
    iget-object v6, v6, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    :cond_a
    move-object v0, v4

    :goto_6
    if-eqz v6, :cond_8

    .line 1760
    iget-object v4, v6, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    .line 1761
    iget-object v7, v4, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    if-nez v7, :cond_c

    .line 1762
    iget v7, v6, Lnet/bytebuddy/jar/asm/Edge;->info:I

    if-ne v7, v1, :cond_b

    move v7, v2

    goto :goto_7

    :cond_b
    iget v7, v6, Lnet/bytebuddy/jar/asm/Edge;->info:I

    add-int/2addr v7, v5

    :goto_7
    int-to-short v7, v7

    iput-short v7, v4, Lnet/bytebuddy/jar/asm/Label;->inputStackSize:S

    .line 1764
    iput-object v0, v4, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    move-object v0, v4

    .line 1767
    :cond_c
    iget-object v6, v6, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_6

    :cond_d
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    return-void
.end method

.method private endCurrentBasicBlockWithNoSuccessor()V
    .locals 4

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1802
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    .line 1803
    new-instance v1, Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {v1, v0}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v1, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1804
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v3}, Lnet/bytebuddy/jar/asm/Label;->resolve([BI)Z

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1805
    iput-object v0, v1, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    .line 1809
    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    iput-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :cond_1
    :goto_0
    return-void
.end method

.method private putAbstractTypes(II)V
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    .line 1966
    aget v1, v1, p1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/jar/asm/Frame;->putAbstractType(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/ByteVector;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putFrame()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    const/4 v2, 0x1

    .line 1866
    aget v3, v1, v2

    const/4 v4, 0x2

    .line 1867
    aget v1, v1, v4

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1868
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v4

    const/16 v5, 0x32

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ge v4, v5, :cond_0

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    .line 1870
    aget v4, v4, v6

    invoke-virtual {v2, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v3, v7

    .line 1871
    invoke-direct {v0, v7, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1872
    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v1, v3

    .line 1873
    invoke-direct {v0, v3, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    return-void

    :cond_0
    iget v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-nez v4, :cond_1

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    .line 1876
    aget v4, v4, v6

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v6

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    :goto_0
    iget-object v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    .line 1880
    aget v5, v5, v2

    sub-int v8, v3, v5

    const/16 v9, 0xfc

    const/16 v10, 0xf8

    const/16 v11, 0xf7

    const/16 v12, 0x40

    const/16 v13, 0xff

    const/16 v14, 0xfb

    if-nez v1, :cond_3

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v2, v9

    goto :goto_2

    :pswitch_1
    if-ge v4, v12, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    move v2, v14

    goto :goto_2

    :pswitch_2
    move v2, v10

    goto :goto_2

    :cond_3
    if-nez v8, :cond_5

    if-ne v1, v2, :cond_5

    const/16 v2, 0x3f

    if-ge v4, v2, :cond_4

    move v2, v12

    goto :goto_2

    :cond_4
    move v2, v11

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v13

    :goto_2
    if-eq v2, v13, :cond_7

    move v15, v7

    :goto_3
    if-ge v6, v5, :cond_7

    if-ge v6, v3, :cond_7

    iget-object v7, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    .line 1912
    aget v7, v7, v15

    iget-object v13, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    aget v13, v13, v15

    if-eq v7, v13, :cond_6

    const/16 v2, 0xff

    goto :goto_4

    :cond_6
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x3

    const/16 v13, 0xff

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v2, :cond_d

    if-eq v2, v12, :cond_c

    if-eq v2, v11, :cond_b

    if-eq v2, v10, :cond_a

    if-eq v2, v14, :cond_9

    if-eq v2, v9, :cond_8

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v5, 0xff

    .line 1949
    invoke-virtual {v2, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v2, 0x3

    add-int/2addr v3, v2

    .line 1950
    invoke-direct {v0, v2, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1951
    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v1, v3

    .line 1952
    invoke-direct {v0, v3, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x3

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v8, v14

    .line 1943
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 1944
    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v5, v2

    add-int/2addr v3, v2

    .line 1945
    invoke-direct {v0, v5, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1934
    invoke-virtual {v1, v14}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v8, v14

    .line 1938
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 1939
    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_5

    :cond_b
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1929
    invoke-virtual {v1, v11}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 1930
    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 1931
    invoke-direct {v0, v1, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_c
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v4, v12

    .line 1924
    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 1925
    invoke-direct {v0, v1, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_d
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1921
    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private putFrameType(Ljava/lang/Object;)V
    .locals 2

    .line 1981
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1982
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    .line 1983
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v1, 0x7

    .line 1985
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    check-cast p1, Ljava/lang/String;

    .line 1986
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0x8

    .line 1989
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lnet/bytebuddy/jar/asm/Label;

    iget p1, p1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 1990
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    return-void
.end method

.method private visitSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_2

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1375
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/16 v1, 0xab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1377
    invoke-direct {p0, v3, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1378
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object p1

    iget-short v0, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1379
    array-length p1, p2

    move v0, v3

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 1380
    invoke-direct {p0, v3, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1381
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v1

    iget-short v2, v1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, v1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    .line 1387
    invoke-direct {p0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1388
    array-length p1, p2

    :goto_1
    if-ge v3, p1, :cond_1

    aget-object v0, p2, v3

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    .line 1389
    invoke-direct {p0, v1, v0}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1393
    :cond_1
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_2
    return-void
.end method


# virtual methods
.method canCopyMethodAttributes(Lnet/bytebuddy/jar/asm/ClassReader;IIZZIII)Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2039
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getSource()Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptorIndex:I

    if-ne p6, v0, :cond_7

    iget p6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-ne p7, p6, :cond_7

    iget p6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    const/high16 p7, 0x20000

    and-int/2addr p6, p7

    const/4 p7, 0x1

    if-eqz p6, :cond_0

    move p6, p7

    goto :goto_0

    :cond_0
    move p6, v1

    :goto_0
    if-eq p5, p6, :cond_1

    goto :goto_3

    :cond_1
    iget-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2046
    invoke-virtual {p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result p5

    const/16 p6, 0x31

    if-ge p5, p6, :cond_2

    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    and-int/lit16 p5, p5, 0x1000

    if-eqz p5, :cond_2

    move p5, p7

    goto :goto_1

    :cond_2
    move p5, v1

    :goto_1
    if-eq p4, p5, :cond_3

    return v1

    :cond_3
    if-nez p8, :cond_4

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-eqz p1, :cond_6

    return v1

    .line 2054
    :cond_4
    invoke-virtual {p1, p8}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-ne p4, p5, :cond_6

    add-int/lit8 p8, p8, 0x2

    move p4, v1

    :goto_2
    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-ge p4, p5, :cond_6

    .line 2057
    invoke-virtual {p1, p8}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p5

    iget-object p6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    aget p6, p6, p4

    if-eq p5, p6, :cond_5

    return v1

    :cond_5
    add-int/lit8 p8, p8, 0x2

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 p2, p2, 0x6

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    add-int/lit8 p3, p3, -0x6

    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceLength:I

    return p7

    :cond_7
    :goto_3
    return v1
.end method

.method final collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 2438
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 2439
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method computeMethodInfoSize()I
    .locals 12

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceLength:I

    add-int/lit8 v0, v0, 0x6

    return v0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2086
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    const-string v2, "RuntimeVisibleTypeAnnotations"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-lez v0, :cond_a

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2087
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const v6, 0xffff

    if-gt v0, v6, :cond_9

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v6, "Code"

    .line 2091
    invoke-virtual {v0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2094
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x10

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Handler;->getExceptionTableSize(Lnet/bytebuddy/jar/asm/Handler;)I

    move-result v6

    add-int/2addr v0, v6

    add-int/2addr v0, v5

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2096
    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v6

    const/16 v7, 0x32

    if-lt v6, v7, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    if-eqz v6, :cond_2

    const-string v6, "StackMapTable"

    goto :goto_1

    :cond_2
    const-string v6, "StackMap"

    .line 2097
    :goto_1
    invoke-virtual {v7, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2099
    iget v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v6, v5

    add-int/2addr v0, v6

    :cond_3
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v7, "LineNumberTable"

    .line 2102
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2104
    iget v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v6, v5

    add-int/2addr v0, v6

    :cond_4
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v7, "LocalVariableTable"

    .line 2107
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2109
    iget v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v6, v5

    add-int/2addr v0, v6

    :cond_5
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v7, "LocalVariableTypeTable"

    .line 2112
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2114
    iget v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v6, v5

    add-int/2addr v0, v6

    :cond_6
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v6, :cond_7

    .line 2118
    invoke-virtual {v6, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_7
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v6, :cond_8

    .line 2123
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_8
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v6, :cond_b

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2127
    iget-object v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v9, v9, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iget v10, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v11, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 2128
    invoke-virtual/range {v6 .. v11}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_2

    .line 2088
    :cond_9
    new-instance v0, Lnet/bytebuddy/jar/asm/MethodTooLargeException;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2089
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->name:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/MethodTooLargeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_a
    move v0, v5

    :cond_b
    :goto_2
    iget v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-lez v6, :cond_c

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v7, "Exceptions"

    .line 2133
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    add-int/2addr v0, v6

    :cond_c
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2136
    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v5

    const/16 v6, 0x31

    if-ge v5, v6, :cond_d

    goto :goto_3

    :cond_d
    move v3, v4

    :goto_3
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v4, "Synthetic"

    .line 2138
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_e
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-eqz v3, :cond_f

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v4, "Signature"

    .line 2142
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_f
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v4, "Deprecated"

    .line 2146
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_10
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_11

    const-string v4, "RuntimeVisibleAnnotations"

    .line 2151
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_11
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_12

    const-string v4, "RuntimeInvisibleAnnotations"

    .line 2156
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_12
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_14

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v4, :cond_13

    .line 2160
    array-length v4, v3

    :cond_13
    const-string v5, "RuntimeVisibleParameterAnnotations"

    .line 2161
    invoke-static {v5, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lnet/bytebuddy/jar/asm/AnnotationWriter;I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_14
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_16

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v4, :cond_15

    .line 2169
    array-length v4, v3

    :cond_15
    const-string v5, "RuntimeInvisibleParameterAnnotations"

    .line 2170
    invoke-static {v5, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lnet/bytebuddy/jar/asm/AnnotationWriter;I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_16
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_17

    .line 2179
    invoke-virtual {v3, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_17
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_18

    .line 2184
    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "AnnotationDefault"

    .line 2188
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2189
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "MethodParameters"

    .line 2192
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2194
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2197
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    return v0
.end method

.method hasAsmInstructions()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    return v0
.end method

.method hasFrames()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method putMethodInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2209
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v1

    const/16 v2, 0x31

    const/4 v9, 0x0

    if-ge v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    const/16 v12, 0x1000

    if-eqz v11, :cond_1

    move v1, v12

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    not-int v1, v1

    and-int/2addr v1, v2

    .line 2211
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->nameIndex:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptorIndex:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2214
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getSource()Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v1

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceLength:I

    invoke-virtual {v8, v1, v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void

    :cond_2
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2219
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v9

    :goto_2
    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-lez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_5

    if-eqz v11, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-eqz v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    const/high16 v13, 0x20000

    and-int/2addr v2, v13

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    :cond_c
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    :cond_e
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_f

    add-int/lit8 v1, v1, 0x1

    :cond_f
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v2, :cond_10

    .line 2259
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Attribute;->getAttributeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 2262
    :cond_10
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2263
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const-string v14, "RuntimeInvisibleTypeAnnotations"

    const-string v15, "RuntimeVisibleTypeAnnotations"

    const/4 v7, 0x2

    if-lez v1, :cond_20

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2266
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0xa

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Handler;->getExceptionTableSize(Lnet/bytebuddy/jar/asm/Handler;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_11

    .line 2270
    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_11
    move v2, v9

    :goto_3
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_12

    .line 2275
    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    :cond_12
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_13

    .line 2280
    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    :cond_13
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_14

    .line 2285
    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    :cond_14
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_15

    .line 2290
    invoke-virtual {v3, v15}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    :cond_15
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v3, :cond_16

    .line 2296
    invoke-virtual {v3, v14}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    :cond_16
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v3, :cond_17

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2301
    iget-object v5, v5, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iget v10, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v13, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v10

    move/from16 v21, v13

    .line 2302
    invoke-virtual/range {v16 .. v21}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 2304
    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Attribute;->getAttributeCount()I

    move-result v3

    add-int/2addr v2, v3

    :cond_17
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v4, "Code"

    .line 2307
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    .line 2308
    invoke-virtual {v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    .line 2309
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 2310
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2311
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2312
    invoke-virtual {v1, v3, v9, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 2313
    invoke-static {v1, v8}, Lnet/bytebuddy/jar/asm/Handler;->putExceptionTable(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2314
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2316
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_4

    :cond_18
    move v1, v9

    :goto_4
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    if-eqz v1, :cond_19

    const-string v1, "StackMapTable"

    goto :goto_5

    :cond_19
    const-string v1, "StackMap"

    .line 2319
    :goto_5
    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    .line 2318
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v2, v7

    .line 2321
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 2322
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2323
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1a
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "LineNumberTable"

    .line 2327
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v2, v7

    .line 2328
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTableLength:I

    .line 2329
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2330
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1b
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "LocalVariableTable"

    .line 2334
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v2, v7

    .line 2335
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTableLength:I

    .line 2336
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2337
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1c
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "LocalVariableTypeTable"

    .line 2341
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v2, v7

    .line 2342
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTableLength:I

    .line 2343
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2344
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1d
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_1e

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2348
    invoke-virtual {v2, v15}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 2347
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_1e
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_1f

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2352
    invoke-virtual {v2, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 2351
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_1f
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_20

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2355
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iget v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    move v10, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V

    goto :goto_6

    :cond_20
    move v10, v7

    :goto_6
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-lez v1, :cond_21

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Exceptions"

    .line 2361
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    mul-int/2addr v2, v10

    add-int/2addr v2, v10

    .line 2362
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    .line 2363
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    .line 2364
    array-length v2, v1

    move v3, v9

    :goto_7
    if-ge v3, v2, :cond_21

    aget v4, v1, v3

    .line 2365
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_21
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    and-int/2addr v1, v12

    if-eqz v1, :cond_22

    if-eqz v11, :cond_22

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Synthetic"

    .line 2369
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_22
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-eqz v1, :cond_23

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Signature"

    .line 2373
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 2374
    invoke-virtual {v1, v10}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    .line 2375
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_23
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_24

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Deprecated"

    .line 2378
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_24
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_25

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "RuntimeVisibleAnnotations"

    .line 2382
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 2381
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_25
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_26

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "RuntimeInvisibleAnnotations"

    .line 2386
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 2385
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_26
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_28

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    .line 2390
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v3, :cond_27

    array-length v3, v2

    .line 2389
    :cond_27
    invoke-static {v1, v2, v3, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putParameterAnnotations(I[Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_28
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    .line 2399
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v3, :cond_29

    array-length v3, v2

    .line 2398
    :cond_29
    invoke-static {v1, v2, v3, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putParameterAnnotations(I[Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_2a
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_2b

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2408
    invoke-virtual {v2, v15}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 2407
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_2b
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_2c

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2412
    invoke-virtual {v2, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 2411
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_2c
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "AnnotationDefault"

    .line 2416
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2417
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2418
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2d
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "MethodParameters"

    .line 2422
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 2423
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parametersCount:I

    .line 2424
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2425
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2e
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_2f

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2428
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_2f
    return-void
.end method

.method visitAbstractType(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    .line 1844
    aput p2, v0, p1

    return-void
.end method

.method public visitAnnotableParameterCount(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->visibleAnnotableParameterCount:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    :goto_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    .line 659
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 661
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p2, :cond_0

    .line 663
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    .line 666
    :cond_0
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5

    .line 651
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 652
    new-instance v0, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-object v0
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    .line 730
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 731
    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 734
    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    :goto_0
    return-void
.end method

.method public visitCode()V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1003
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1005
    invoke-virtual {v0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1006
    iget v0, p2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p3, p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p3, :cond_a

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 1013
    :cond_0
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 p3, 0x1

    const/4 p4, -0x2

    const/16 v0, 0x4a

    const/16 v1, 0x44

    packed-switch p1, :pswitch_data_0

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_7

    if-ne p2, v0, :cond_4

    goto :goto_1

    :pswitch_0
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_2

    :cond_1
    move v2, p3

    :cond_2
    add-int/2addr p1, v2

    goto :goto_2

    :pswitch_1
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p4, -0x1

    :cond_4
    :goto_0
    add-int/2addr p1, p4

    goto :goto_2

    :pswitch_2
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_5

    if-ne p2, v0, :cond_6

    :cond_5
    const/4 p3, 0x2

    :cond_6
    add-int/2addr p1, p3

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p4, -0x3

    goto :goto_0

    :goto_2
    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_8

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_8
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_4

    .line 1010
    :cond_9
    :goto_3
    iget-object p3, p3, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p3, p1, v2, p2, p4}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v3, p2

    move/from16 v7, p4

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    return-void

    :cond_0
    const/4 v5, -0x1

    const/4 v8, 0x2

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v2, v6, :cond_3

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 756
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    if-nez v2, :cond_1

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 760
    new-instance v2, Lnet/bytebuddy/jar/asm/CurrentFrame;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v2, v4}, Lnet/bytebuddy/jar/asm/CurrentFrame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v2, v1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 761
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, p2}, Lnet/bytebuddy/jar/asm/Frame;->setInputFrameFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 763
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    goto/16 :goto_8

    :cond_1
    if-ne v1, v5, :cond_2

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 766
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/Frame;->setInputFrameFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 772
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    goto/16 :goto_8

    :cond_3
    if-ne v1, v5, :cond_7

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    if-nez v1, :cond_4

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 776
    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    shr-int/2addr v1, v8

    .line 777
    new-instance v2, Lnet/bytebuddy/jar/asm/Frame;

    new-instance v4, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    invoke-direct {v2, v4}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 778
    invoke-virtual {v2, v4, v5, v6, v1}, Lnet/bytebuddy/jar/asm/Frame;->setInputFrameFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V

    .line 780
    invoke-virtual {v2, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    :cond_4
    iput v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 783
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {p0, v1, p2, v7}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameStart(III)I

    move-result v1

    move v2, v9

    :goto_0
    if-ge v2, v3, :cond_5

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 785
    aget-object v11, p3, v2

    invoke-static {v6, v11}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v6

    aput v6, v4, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_0

    :cond_5
    move v2, v9

    :goto_1
    if-ge v2, v7, :cond_6

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 788
    aget-object v6, p5, v2

    invoke-static {v5, v6}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_1

    .line 790
    :cond_6
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameEnd()V

    goto/16 :goto_8

    :cond_7
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v2, :cond_8

    .line 794
    new-instance v2, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v2}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 795
    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    goto :goto_2

    :cond_8
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 797
    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iget v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrameOffset:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v10

    if-gez v2, :cond_a

    if-ne v1, v6, :cond_9

    return-void

    .line 802
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    :goto_2
    if-eqz v1, :cond_11

    if-eq v1, v10, :cond_10

    const/16 v5, 0xfb

    if-eq v1, v8, :cond_f

    const/16 v3, 0x40

    if-eq v1, v6, :cond_d

    if-ne v1, v4, :cond_c

    if-ge v2, v3, :cond_b

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v2, v3

    .line 839
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_3

    :cond_b
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0xf7

    .line 842
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 843
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 845
    :goto_3
    aget-object v1, p5, v9

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 848
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_d
    if-ge v2, v3, :cond_e

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 832
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    :cond_e
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 834
    invoke-virtual {v1, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    :cond_f
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    sub-int/2addr v1, v3

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    sub-int/2addr v5, v3

    .line 828
    invoke-virtual {v1, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    :cond_10
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    add-int/2addr v1, v3

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit16 v4, v3, 0xfb

    .line 821
    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move v1, v9

    :goto_4
    if-ge v1, v3, :cond_13

    .line 823
    aget-object v2, p3, v1

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    iput v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v4, 0xff

    .line 810
    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move v1, v9

    :goto_5
    if-ge v1, v3, :cond_12

    .line 812
    aget-object v2, p3, v1

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 814
    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move v1, v9

    :goto_6
    if-ge v1, v7, :cond_13

    .line 816
    aget-object v2, p5, v1

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    :goto_7
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 851
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrameOffset:I

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/2addr v1, v10

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    :goto_8
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-ne v1, v8, :cond_17

    iput v7, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    :goto_9
    if-ge v9, v7, :cond_16

    .line 858
    aget-object v1, p5, v9

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_14

    aget-object v1, p5, v9

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_15

    :cond_14
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v1, v10

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_16
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v1, v2, :cond_17

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_17
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    .line 867
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    .line 868
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    return-void
.end method

.method visitFrameEnd()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1855
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1857
    :cond_0
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrame()V

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    return-void
.end method

.method visitFrameStart(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    if-eqz v1, :cond_0

    .line 1828
    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 1829
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    const/4 v1, 0x0

    .line 1831
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 1832
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 1833
    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method public visitIincInsn(II)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1322
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xff

    const/16 v1, 0x84

    if-gt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    const/16 v0, -0x80

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1327
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v2, 0xc4

    .line 1325
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p2, :cond_3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1332
    :cond_2
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, p1, v0, v0}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_3
    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    if-le p1, p2, :cond_4

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    :cond_4
    return-void
.end method

.method public visitInsn(I)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 873
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 875
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_5

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v1, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    .line 881
    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_1
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 879
    :cond_2
    :goto_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :goto_1
    const/16 v0, 0xac

    if-lt p1, v0, :cond_3

    const/16 v0, 0xb1

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_5

    .line 888
    :cond_4
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_5
    return-void
.end method

.method public visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    .line 1420
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    const v1, -0xffff01

    and-int/2addr p1, v1

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    .line 1422
    invoke-static {p1, v0}, Lnet/bytebuddy/jar/asm/TypeReference;->putTarget(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 1423
    invoke-static {p2, v0}, Lnet/bytebuddy/jar/asm/TypePath;->put(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1425
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p4, :cond_0

    .line 1427
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    .line 1430
    :cond_0
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitIntInsn(II)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 895
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 898
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 900
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_4

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0xbc

    if-eq p1, p2, :cond_4

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_2

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_2

    .line 905
    :cond_3
    :goto_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1080
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1083
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1085
    iget p3, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 p4, 0xba

    invoke-virtual {p2, p4, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 p3, 0x0

    .line 1086
    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p2, :cond_3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1092
    :cond_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    shr-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p2

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_1

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_1
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 1090
    :cond_2
    :goto_0
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p2, p4, p3, p1, v0}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 10

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1105
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    add-int/lit8 v1, p1, -0x21

    goto :goto_0

    :cond_0
    move v1, p1

    .line 1111
    :goto_0
    iget-short v2, p2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/16 v4, 0xa8

    const/16 v5, 0xa7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    iget v2, p2, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int/2addr v2, v8

    const/16 v8, -0x8000

    if-ge v2, v8, :cond_4

    if-ne v1, v5, :cond_1

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1118
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v0, 0xc9

    .line 1120
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    move p1, v6

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v0, 0xc6

    if-lt v1, v0, :cond_3

    xor-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    xor-int/2addr v0, v7

    sub-int/2addr v0, v7

    .line 1125
    :goto_2
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v0, 0x8

    .line 1126
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v0, 0xdc

    .line 1133
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iput-boolean v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    move p1, v7

    :goto_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1138
    iget v2, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int/2addr v2, v7

    invoke-virtual {p2, v0, v2, v7}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    goto :goto_5

    :cond_4
    if-eq v1, p1, :cond_5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1142
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1143
    iget v0, p1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int/2addr v0, v7

    invoke-virtual {p2, p1, v0, v7}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1148
    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1149
    iget v0, p1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int/2addr v0, v7

    invoke-virtual {p2, p1, v0, v6}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    :goto_4
    move p1, v6

    :goto_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_e

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v2, v3, :cond_6

    .line 1156
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v0, v1, v6, v9, v9}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1158
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    iget-short v2, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/2addr v2, v8

    int-to-short v2, v2

    iput-short v2, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1160
    invoke-direct {p0, v6, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    if-eq v1, v5, :cond_b

    .line 1165
    new-instance v9, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v9}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    goto :goto_6

    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 1168
    iget-object p2, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {p2, v1, v6, v9, v9}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    goto :goto_6

    :cond_7
    if-ne v2, v8, :cond_8

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v0, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    .line 1171
    aget v0, v0, v1

    add-int/2addr p2, v0

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_6

    :cond_8
    if-ne v1, v4, :cond_a

    .line 1175
    iget-short v0, p2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_9

    .line 1176
    iget-short v0, p2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    iput-boolean v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasSubroutines:Z

    :cond_9
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1179
    iget-short v2, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    iput-short v2, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v0, v7

    .line 1186
    invoke-direct {p0, v0, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1188
    new-instance v9, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v9}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    goto :goto_6

    :cond_a
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v2, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    .line 1191
    aget v2, v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    .line 1192
    invoke-direct {p0, v0, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_b
    :goto_6
    if-eqz v9, :cond_d

    if-eqz p1, :cond_c

    .line 1199
    iget-short p1, v9, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/2addr p1, v8

    int-to-short p1, p1

    iput-short p1, v9, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1201
    :cond_c
    invoke-virtual {p0, v9}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_d
    if-ne v1, v5, :cond_e

    .line 1204
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_e
    return-void
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 5

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1212
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {p1, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->resolve([BI)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    .line 1215
    iget-short v0, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_2

    .line 1220
    iget v0, p1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1225
    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    iget-short v2, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1229
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    return-void

    .line 1235
    :cond_1
    invoke-direct {p0, v3, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_4

    .line 1239
    iget v0, p1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1241
    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    iget-short v2, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1243
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    return-void

    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1247
    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :cond_4
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1253
    new-instance v0, Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_6

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    .line 1261
    :cond_6
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    :cond_7
    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_8

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    .line 1266
    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    .line 1267
    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_8
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_9

    .line 1275
    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :cond_9
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    :cond_a
    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_b

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :cond_b
    :goto_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1288
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1290
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    .line 1291
    iget v0, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    .line 1293
    iget v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    iget v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    .line 1297
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const/16 v2, 0x12

    if-eqz v1, :cond_2

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v6, 0x14

    .line 1300
    invoke-virtual {v5, v6, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    :cond_2
    const/16 v5, 0x100

    if-lt v0, v5, :cond_3

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v6, 0x13

    .line 1302
    invoke-virtual {v5, v6, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1304
    invoke-virtual {v5, v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_8

    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    :cond_5
    add-int/2addr p1, v3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, v0, :cond_6

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_6
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_4

    .line 1309
    :cond_7
    :goto_3
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, v2, v4, p1, v1}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1543
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTableLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTableLength:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1546
    iget p2, p2, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1547
    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v1, :cond_0

    .line 1479
    new-instance v1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTableLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTableLength:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1482
    iget v2, p4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 1483
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget v3, p4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    sub-int/2addr v2, v3

    .line 1484
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1485
    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1486
    invoke-virtual {v2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p3

    .line 1487
    invoke-virtual {p3, p6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez p3, :cond_2

    .line 1490
    new-instance p3, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p3}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2
    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTableLength:I

    add-int/2addr p3, v0

    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTableLength:I

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1493
    iget v1, p4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 1494
    invoke-virtual {p3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p3

    iget p5, p5, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget p4, p4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    sub-int/2addr p5, p4

    .line 1495
    invoke-virtual {p3, p5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p3

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1496
    invoke-virtual {p4, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1497
    invoke-virtual {p3, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    .line 1498
    invoke-virtual {p1, p6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 1500
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_3

    const/16 p2, 0x44

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr p6, v0

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    if-le p6, p1, :cond_5

    iput p6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    :cond_5
    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5

    .line 1519
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    ushr-int/lit8 p1, p1, 0x18

    .line 1521
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    array-length v1, p3

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 p1, 0x0

    move v1, p1

    .line 1522
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 1523
    aget-object v2, p3, v1

    iget v2, v2, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 1524
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    aget-object v4, p3, v1

    iget v4, v4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    sub-int/2addr v3, v4

    .line 1525
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    .line 1526
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1528
    :cond_0
    invoke-static {p2, v0}, Lnet/bytebuddy/jar/asm/TypePath;->put(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1530
    invoke-virtual {p2, p6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p7, :cond_1

    .line 1532
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    .line 1535
    :cond_1
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1359
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0xab

    .line 1361
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    .line 1362
    invoke-virtual {p1, v0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1363
    array-length v1, p3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1364
    :goto_0
    array-length v0, p3

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1365
    aget v1, p2, v3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1366
    aget-object v0, p3, v3

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v0, v1, v4, v2}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1369
    :cond_0
    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1553
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->computeAllFrames()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1555
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->computeMaxStackAndLocal()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    :goto_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1044
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1046
    invoke-virtual {v0, p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    const/4 p3, 0x0

    const/16 p4, 0xb9

    if-ne p1, p4, :cond_0

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1048
    iget v0, p2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p5, p4, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p4

    .line 1049
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p5

    shr-int/lit8 p5, p5, 0x2

    invoke-virtual {p4, p5, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1051
    iget p5, p2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p4, p1, p5}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p4, :cond_5

    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v0, 0x4

    if-eq p5, v0, :cond_4

    const/4 v0, 0x3

    if-ne p5, v0, :cond_1

    goto :goto_2

    .line 1058
    :cond_1
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p2

    and-int/lit8 p3, p2, 0x3

    shr-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    const/16 p2, 0xb8

    if-ne p1, p2, :cond_2

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p3

    :goto_1
    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_3

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_3
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3

    .line 1056
    :cond_4
    :goto_2
    iget-object p4, p4, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p4, p1, p3, p2, p5}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1399
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1401
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1402
    iget v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v2, 0xc5

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_2

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    rsub-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 1406
    :cond_1
    :goto_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, v2, p2, p1, v1}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parametersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parametersCount:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 646
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3

    .line 705
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 707
    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p3, :cond_1

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 711
    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 713
    new-instance p3, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    aget-object v2, v2, p1

    invoke-direct {p3, v1, v0, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    aput-object p3, p2, p1

    return-object p3

    :cond_1
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-nez p2, :cond_2

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 719
    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :cond_2
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 721
    new-instance p3, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    aget-object v2, v2, p1

    invoke-direct {p3, v1, v0, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    aput-object p3, p2, p1

    return-object p3
.end method

.method public varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1345
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0xaa

    .line 1347
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    .line 1348
    invoke-virtual {p3, v0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1349
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1350
    array-length p1, p4

    :goto_0
    if-ge v3, p1, :cond_0

    aget-object p2, p4, v3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1351
    invoke-virtual {p2, v0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1354
    :cond_0
    invoke-direct {p0, p3, p4}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 1454
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    .line 1456
    invoke-static {p1, v0}, Lnet/bytebuddy/jar/asm/TypeReference;->putTarget(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 1457
    invoke-static {p2, v0}, Lnet/bytebuddy/jar/asm/TypePath;->put(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1459
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p4, :cond_0

    .line 1461
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    .line 1464
    :cond_0
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 7

    .line 1438
    new-instance v6, Lnet/bytebuddy/jar/asm/Handler;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1440
    invoke-virtual {v0, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Handler;-><init>(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;ILjava/lang/String;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    if-nez p1, :cond_1

    iput-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1444
    iput-object v6, p1, Lnet/bytebuddy/jar/asm/Handler;->nextHandler:Lnet/bytebuddy/jar/asm/Handler;

    :goto_1
    iput-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastHandler:Lnet/bytebuddy/jar/asm/Handler;

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 676
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    .line 678
    invoke-static {p1, v0}, Lnet/bytebuddy/jar/asm/TypeReference;->putTarget(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 679
    invoke-static {p2, v0}, Lnet/bytebuddy/jar/asm/TypePath;->put(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 681
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz p4, :cond_0

    .line 683
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    .line 686
    :cond_0
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 981
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 983
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 984
    iget v1, p2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_3

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xbb

    if-ne p1, p2, :cond_3

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_1

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_1
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 988
    :cond_2
    :goto_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1, v1, p2, v2}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 919
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xa9

    const/16 v1, 0x36

    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    if-eq p1, v0, :cond_1

    if-ge p1, v1, :cond_0

    add-int/lit8 v3, p1, -0x15

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1a

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, -0x36

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3b

    :goto_0
    add-int/2addr v3, p2

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 928
    invoke-virtual {v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_1
    const/16 v3, 0x100

    if-lt p2, v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v4, 0xc4

    .line 930
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 932
    invoke-virtual {v3, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v3, :cond_7

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eq v4, v2, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v0, :cond_4

    .line 941
    iget-short v0, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    int-to-short v3, v3

    .line 942
    iput-short v3, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackSize:S

    .line 943
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    goto :goto_3

    :cond_4
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v3, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    .line 945
    aget v3, v3, p1

    add-int/2addr v0, v3

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v3, :cond_5

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_5
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3

    .line 937
    :cond_6
    :goto_2
    iget-object v0, v3, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_7
    :goto_3
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz v0, :cond_a

    const/16 v3, 0x16

    if-eq p1, v3, :cond_9

    const/16 v3, 0x18

    if-eq p1, v3, :cond_9

    const/16 v3, 0x37

    if-eq p1, v3, :cond_9

    const/16 v3, 0x39

    if-ne p1, v3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 p2, p2, 0x2

    :goto_5
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    if-le p2, v3, :cond_a

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    :cond_a
    if-lt p1, v1, :cond_b

    if-ne v0, v2, :cond_b

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    if-eqz p1, :cond_b

    .line 975
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_b
    return-void
.end method
