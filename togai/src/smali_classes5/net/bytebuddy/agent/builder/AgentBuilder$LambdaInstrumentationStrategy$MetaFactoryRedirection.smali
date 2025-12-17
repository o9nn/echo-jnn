.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "MetaFactoryRedirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;",
        ">;",
        "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7777
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7772
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;

    .line 7772
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;

    .line 7772
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$MetaFactoryRedirection;

    return-object v0
.end method


# virtual methods
.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 19

    move-object/from16 v6, p3

    .line 7789
    invoke-virtual/range {p3 .. p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    const/16 v1, 0xb8

    .line 7790
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getUnsafe"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "()L"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x3a

    const/4 v8, 0x6

    .line 7791
    invoke-virtual {v6, v7, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v9, 0x19

    .line 7792
    invoke-virtual {v6, v9, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v10, 0x0

    .line 7793
    invoke-virtual {v6, v9, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "lookupClass"

    const-string v4, "()Ljava/lang/Class;"

    .line 7794
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/ClassLoader"

    const-string v3, "getSystemClassLoader"

    const-string v4, "()Ljava/lang/ClassLoader;"

    .line 7795
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "net.bytebuddy.agent.builder.LambdaFactory"

    .line 7796
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/ClassLoader"

    const-string v3, "loadClass"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/Class;"

    move-object/from16 v0, p3

    .line 7797
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "make"

    .line 7798
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v11, 0x10

    const/16 v12, 0x9

    .line 7799
    invoke-virtual {v6, v11, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v13, 0xbd

    const-string v14, "java/lang/Class"

    .line 7800
    invoke-virtual {v6, v13, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v15, 0x59

    .line 7801
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v5, 0x3

    .line 7802
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Ljava/lang/Object;"

    .line 7803
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0x53

    .line 7804
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7805
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v3, 0x4

    .line 7806
    invoke-virtual {v6, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v1, "Ljava/lang/String;"

    .line 7807
    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 7808
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7809
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v2, 0x5

    .line 7810
    invoke-virtual {v6, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7811
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 7812
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7813
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7814
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7815
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 7816
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7817
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x7

    .line 7818
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7819
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    invoke-virtual {v6, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 7820
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7821
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v2, 0x8

    .line 7822
    invoke-virtual {v6, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7823
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 7824
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7825
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7826
    invoke-virtual {v6, v11, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v0, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    const/16 v7, 0xb2

    const-string v5, "java/lang/Boolean"

    .line 7827
    invoke-virtual {v6, v7, v5, v0, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7828
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7829
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7830
    invoke-virtual {v6, v11, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v0, "Ljava/util/List;"

    .line 7831
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    invoke-virtual {v6, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 7832
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7833
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7834
    invoke-virtual {v6, v11, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    .line 7835
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 7836
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0xb6

    const-string v5, "java/lang/Class"

    const-string v16, "getDeclaredMethod"

    const-string v17, "(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;"

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move v7, v1

    move v1, v3

    const/4 v3, 0x5

    move-object v2, v5

    move v7, v3

    const/4 v5, 0x4

    move-object/from16 v3, v16

    move v8, v4

    move-object/from16 v4, v17

    const/4 v7, 0x3

    move/from16 v5, v18

    .line 7837
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x1

    .line 7838
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7839
    invoke-virtual {v6, v11, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v12, "java/lang/Object"

    .line 7840
    invoke-virtual {v6, v13, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 7841
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7842
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7843
    invoke-virtual {v6, v9, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 7844
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7845
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x4

    .line 7846
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7847
    invoke-virtual {v6, v9, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 7848
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7849
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x5

    .line 7850
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v10, 0x2

    .line 7851
    invoke-virtual {v6, v9, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 7852
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7853
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x6

    .line 7854
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7855
    invoke-virtual {v6, v9, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 7856
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7857
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x7

    .line 7858
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7859
    invoke-virtual {v6, v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 7860
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7861
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x8

    .line 7862
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x5

    .line 7863
    invoke-virtual {v6, v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 7864
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7865
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x6

    .line 7866
    invoke-virtual {v6, v11, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    .line 7867
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/Boolean"

    const-string v3, "valueOf"

    const-string v16, "(Z)Ljava/lang/Boolean;"

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move v13, v4

    move-object/from16 v4, v16

    move v7, v5

    move/from16 v5, v17

    .line 7868
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7869
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7870
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x7

    .line 7871
    invoke-virtual {v6, v11, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v2, "java/util/Collections"

    const-string v3, "emptyList"

    const-string v4, "()Ljava/util/List;"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 7872
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7873
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7874
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7875
    invoke-virtual {v6, v11, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v2, "java/util/Collections"

    const-string v3, "emptyList"

    const-string v4, "()Ljava/util/List;"

    .line 7876
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7877
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/reflect/Method"

    const-string v3, "invoke"

    const-string v4, "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;"

    .line 7878
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0xc0

    const-string v1, "[B"

    .line 7879
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 7880
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb6

    .line 7881
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "defineAnonymousClass"

    const-string v4, "(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Class;"

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x3a

    const/4 v1, 0x7

    .line 7882
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x6

    .line 7883
    invoke-virtual {v6, v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 7884
    invoke-virtual {v6, v9, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 7885
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ensureClassInitialized"

    const-string v4, "(Ljava/lang/Class;)V"

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7886
    invoke-virtual {v6, v9, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "java/lang/invoke/MethodType"

    const-string v3, "parameterCount"

    const-string v4, "()I"

    .line 7887
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7888
    new-instance v7, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v7}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0x9a

    .line 7889
    invoke-virtual {v6, v0, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    const-string v0, "java/lang/invoke/ConstantCallSite"

    const/16 v8, 0xbb

    .line 7890
    invoke-virtual {v6, v8, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 7891
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7892
    invoke-virtual {v6, v9, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "java/lang/invoke/MethodType"

    const-string v3, "returnType"

    const-string v4, "()Ljava/lang/Class;"

    move-object/from16 v0, p3

    .line 7893
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x7

    .line 7894
    invoke-virtual {v6, v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "java/lang/Class"

    const-string v3, "getDeclaredConstructors"

    const-string v4, "()[Ljava/lang/reflect/Constructor;"

    move-object/from16 v0, p3

    .line 7895
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    .line 7896
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x32

    .line 7897
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7898
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xbd

    .line 7899
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/reflect/Constructor"

    const-string v3, "newInstance"

    const-string v4, "([Ljava/lang/Object;)Ljava/lang/Object;"

    move-object/from16 v0, p3

    .line 7900
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/invoke/MethodHandles"

    const-string v3, "constant"

    const-string v4, "(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;"

    .line 7901
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb7

    const-string v2, "java/lang/invoke/ConstantCallSite"

    const-string v3, "<init>"

    const-string v4, "(Ljava/lang/invoke/MethodHandle;)V"

    .line 7902
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7903
    new-instance v11, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v11}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0xa7

    .line 7904
    invoke-virtual {v6, v0, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 7905
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 7906
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const-string v0, "java/lang/invoke/ConstantCallSite"

    .line 7907
    invoke-virtual {v6, v8, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 7908
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "IMPL_LOOKUP"

    const-string v1, "Ljava/lang/invoke/MethodHandles$Lookup;"

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const/16 v3, 0xb2

    .line 7909
    invoke-virtual {v6, v3, v2, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 7910
    invoke-virtual {v6, v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v0, "get$Lambda"

    .line 7911
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 7912
    invoke-virtual {v6, v9, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "findStatic"

    const-string v4, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 7913
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb7

    const-string v2, "java/lang/invoke/ConstantCallSite"

    const-string v3, "<init>"

    const-string v4, "(Ljava/lang/invoke/MethodHandle;)V"

    .line 7914
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7915
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "java/lang/invoke/CallSite"

    .line 7916
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v0, 0xb0

    .line 7917
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 7918
    invoke-virtual {v6, v13, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 7919
    invoke-virtual/range {p3 .. p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 7920
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->IGNORE_ORIGINAL:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-object v0
.end method
