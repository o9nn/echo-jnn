.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdviceMethodInliner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableCollector;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableExtractor;
    }
.end annotation


# instance fields
.field protected final argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

.field protected final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field protected final classReader:Lnet/bytebuddy/jar/asm/ClassReader;

.field protected final implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

.field protected final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field protected final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field protected final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/jar/asm/Label;",
            ">;"
        }
    .end annotation
.end field

.field protected final methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

.field protected final methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field protected final relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

.field protected final stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

.field protected final suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

.field final synthetic this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;Lnet/bytebuddy/jar/asm/ClassReader;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;

    .line 7272
    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(I)V

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iput-object p5, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iput-object p6, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-object p7, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    iput-object p8, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iput-object p9, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iput-object p10, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iput-object p12, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->classReader:Lnet/bytebuddy/jar/asm/ClassReader;

    iput-object p11, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

    .line 7284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->labels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->classReader:Lnet/bytebuddy/jar/asm/ClassReader;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    .line 7328
    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->getReaderHint()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;I)V

    return-void
.end method

.method public initialize()V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    .line 7299
    invoke-virtual {v0, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;->resolveInitializationTypes(Lnet/bytebuddy/asm/Advice$ArgumentHandler;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7300
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7302
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7303
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 7307
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0x9

    .line 7308
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 7309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x37

    invoke-virtual {v2, v4, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_2

    .line 7310
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0xb

    .line 7311
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 7312
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x38

    invoke-virtual {v2, v4, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2

    .line 7313
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0xe

    .line 7314
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 7315
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x39

    invoke-virtual {v2, v4, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v3, 0x1

    .line 7317
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 7318
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3a

    invoke-virtual {v2, v4, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v3, 0x3

    .line 7305
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 7306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x36

    invoke-virtual {v2, v4, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_2
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    .line 7320
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    invoke-interface {v2, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireStackSize(I)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public prepare()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->classReader:Lnet/bytebuddy/jar/asm/ClassReader;

    .line 7291
    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableExtractor;

    invoke-direct {v1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableExtractor;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;)V

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;I)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 7292
    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;->onPrepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;

    .line 7333
    iget-object v1, v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;

    iget-object v1, v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;

    iget-object v2, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iget-object v5, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v8, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v9, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v10, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v11, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iget-object v12, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

    .line 7334
    invoke-virtual/range {v2 .. v12}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;

    :goto_0
    return-object v1
.end method
