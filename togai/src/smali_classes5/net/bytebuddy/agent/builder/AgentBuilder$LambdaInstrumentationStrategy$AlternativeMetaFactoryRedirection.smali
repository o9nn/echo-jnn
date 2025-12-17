.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;
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
    name = "AlternativeMetaFactoryRedirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;",
        ">;",
        "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7985
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7980
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    .line 7980
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    .line 7980
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    return-object v0
.end method


# virtual methods
.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 36

    move-object/from16 v6, p3

    .line 7997
    invoke-virtual/range {p3 .. p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    const/16 v7, 0x19

    const/4 v8, 0x3

    .line 7998
    invoke-virtual {v6, v7, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v9, 0x6

    .line 7999
    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v10, 0x32

    .line 8000
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "java/lang/Integer"

    const/16 v11, 0xc0

    .line 8001
    invoke-virtual {v6, v11, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Integer"

    const-string v3, "intValue"

    const-string v4, "()I"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 8002
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v12, 0x36

    const/4 v13, 0x4

    .line 8003
    invoke-virtual {v6, v12, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v14, 0x7

    .line 8004
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v15, 0x5

    .line 8005
    invoke-virtual {v6, v12, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x15

    .line 8006
    invoke-virtual {v6, v5, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8007
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x7e

    .line 8008
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8009
    new-instance v4, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0x99

    .line 8010
    invoke-virtual {v6, v0, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 8011
    invoke-virtual {v6, v7, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8012
    invoke-virtual {v6, v5, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v3, 0x1

    .line 8013
    invoke-virtual {v6, v15, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    .line 8014
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "java/lang/Integer"

    .line 8015
    invoke-virtual {v6, v11, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v2, "java/lang/Integer"

    const-string v16, "intValue"

    const-string v17, "()I"

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move v11, v3

    move-object/from16 v3, v16

    move-object v10, v4

    move-object/from16 v4, v17

    move v11, v5

    move/from16 v5, v18

    .line 8016
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8017
    invoke-virtual {v6, v12, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8018
    invoke-virtual {v6, v11, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xbd

    const-string v4, "java/lang/Class"

    .line 8019
    invoke-virtual {v6, v5, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v3, 0x3a

    .line 8020
    invoke-virtual {v6, v3, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8021
    invoke-virtual {v6, v7, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8022
    invoke-virtual {v6, v11, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8023
    invoke-virtual {v6, v7, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8024
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8025
    invoke-virtual {v6, v11, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/System"

    const-string v17, "arraycopy"

    const-string v18, "(Ljava/lang/Object;ILjava/lang/Object;II)V"

    const/16 v19, 0x0

    move v7, v3

    move-object/from16 v3, v17

    move-object v13, v4

    move-object/from16 v4, v18

    move v7, v5

    move/from16 v5, v19

    .line 8026
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8027
    invoke-virtual {v6, v11, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8028
    invoke-virtual {v6, v11, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x60

    .line 8029
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8030
    invoke-virtual {v6, v12, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8031
    new-instance v5, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v5}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v4, 0xa7

    .line 8032
    invoke-virtual {v6, v4, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 8033
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 8034
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    sget-object v3, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v10, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move v4, v10

    move-object v10, v5

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 8035
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8036
    invoke-virtual {v6, v7, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x3a

    .line 8037
    invoke-virtual {v6, v0, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8038
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v2, 0x1

    const-string v0, "[Ljava/lang/Class;"

    .line 8039
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 8040
    invoke-virtual {v6, v11, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8041
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x7e

    .line 8042
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8043
    new-instance v10, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v10}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0x99

    .line 8044
    invoke-virtual {v6, v0, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    const/16 v0, 0x19

    .line 8045
    invoke-virtual {v6, v0, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8046
    invoke-virtual {v6, v11, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 8047
    invoke-virtual {v6, v15, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    const/16 v0, 0x32

    .line 8048
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "java/lang/Integer"

    const/16 v1, 0xc0

    .line 8049
    invoke-virtual {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Integer"

    const-string v3, "intValue"

    const-string v4, "()I"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 8050
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x8

    .line 8051
    invoke-virtual {v6, v12, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8052
    invoke-virtual {v6, v11, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v0, "java/lang/invoke/MethodType"

    .line 8053
    invoke-virtual {v6, v7, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x3a

    .line 8054
    invoke-virtual {v6, v0, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    .line 8055
    invoke-virtual {v6, v0, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8056
    invoke-virtual {v6, v11, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8057
    invoke-virtual {v6, v0, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8058
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8059
    invoke-virtual {v6, v11, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/System"

    const-string v3, "arraycopy"

    const-string v4, "(Ljava/lang/Object;ILjava/lang/Object;II)V"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v11, v5

    move v5, v12

    .line 8060
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8061
    new-instance v12, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v12}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v5, 0xa7

    .line 8062
    invoke-virtual {v6, v5, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 8063
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object v5, v10

    .line 8064
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 8065
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "java/lang/invoke/MethodType"

    .line 8066
    invoke-virtual {v6, v7, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x3a

    .line 8067
    invoke-virtual {v6, v0, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8068
    invoke-virtual {v6, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v0, "[Ljava/lang/invoke/MethodType;"

    .line 8069
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v1, 0xb8

    .line 8070
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

    const/16 v0, 0x3a

    .line 8071
    invoke-virtual {v6, v0, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    .line 8072
    invoke-virtual {v6, v0, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x0

    .line 8073
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "lookupClass"

    const-string v4, "()Ljava/lang/Class;"

    move-object/from16 v0, p3

    .line 8074
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/ClassLoader"

    const-string v3, "getSystemClassLoader"

    const-string v4, "()Ljava/lang/ClassLoader;"

    .line 8075
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "net.bytebuddy.agent.builder.LambdaFactory"

    .line 8076
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/ClassLoader"

    const-string v3, "loadClass"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/Class;"

    move-object/from16 v0, p3

    .line 8077
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "make"

    .line 8078
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v10, 0x10

    const/16 v12, 0x9

    .line 8079
    invoke-virtual {v6, v10, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    .line 8080
    invoke-virtual {v6, v7, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v5, 0x59

    .line 8081
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8082
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Ljava/lang/Object;"

    .line 8083
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0x53

    .line 8084
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8085
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x4

    .line 8086
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v1, "Ljava/lang/String;"

    .line 8087
    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 8088
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8089
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8090
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8091
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 8092
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8093
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8094
    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8095
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 8096
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8097
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8098
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8099
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 8100
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8101
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8102
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8103
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 8104
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8105
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8106
    invoke-virtual {v6, v10, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v0, "TYPE"

    const-string v1, "Ljava/lang/Class;"

    const/16 v2, 0xb2

    const-string v3, "java/lang/Boolean"

    .line 8107
    invoke-virtual {v6, v2, v3, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8108
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8109
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8110
    invoke-virtual {v6, v10, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v0, "Ljava/util/List;"

    .line 8111
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 8112
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8113
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8114
    invoke-virtual {v6, v10, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v0, "Ljava/util/List;"

    .line 8115
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 8116
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Class"

    const-string v3, "getDeclaredMethod"

    const-string v19, "(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move v11, v4

    move-object/from16 v4, v19

    move v14, v5

    move/from16 v5, v20

    .line 8117
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 8118
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8119
    invoke-virtual {v6, v10, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v1, "java/lang/Object"

    .line 8120
    invoke-virtual {v6, v7, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 8121
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8122
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x0

    const/16 v2, 0x19

    .line 8123
    invoke-virtual {v6, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8124
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8125
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x4

    .line 8126
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8127
    invoke-virtual {v6, v2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8128
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8129
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8130
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v5, 0x2

    .line 8131
    invoke-virtual {v6, v2, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8132
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8133
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8134
    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8135
    invoke-virtual {v6, v2, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8136
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x32

    .line 8137
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8138
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8139
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x7

    .line 8140
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8141
    invoke-virtual {v6, v2, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x4

    .line 8142
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8143
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8144
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8145
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0x8

    .line 8146
    invoke-virtual {v6, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8147
    invoke-virtual {v6, v2, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8148
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8149
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8150
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8151
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8152
    invoke-virtual {v6, v10, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0x15

    .line 8153
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8154
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x7e

    .line 8155
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8156
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v2, 0x99

    .line 8157
    invoke-virtual {v6, v2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 8158
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8159
    new-instance v15, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v15}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v4, 0xa7

    .line 8160
    invoke-virtual {v6, v4, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 8161
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x0

    const/16 v2, 0x9

    const-string v18, "java/lang/invoke/MethodHandles$Lookup"

    const-string v19, "java/lang/String"

    const-string v20, "java/lang/invoke/MethodType"

    const-string v21, "[Ljava/lang/Object;"

    .line 8162
    sget-object v22, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    sget-object v23, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    const-string v24, "[Ljava/lang/Class;"

    const-string v25, "[Ljava/lang/invoke/MethodType;"

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v26

    filled-new-array/range {v18 .. v26}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v18, 0x7

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v19

    const-string v20, "java/lang/Class"

    const-string v21, "java/lang/reflect/Method"

    sget-object v22, Lnet/bytebuddy/jar/asm/Opcodes;->NULL:Ljava/lang/Integer;

    const-string v23, "[Ljava/lang/Object;"

    const-string v24, "[Ljava/lang/Object;"

    sget-object v25, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    filled-new-array/range {v19 .. v25}, [Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p3

    move/from16 v4, v18

    move v7, v5

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 8163
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8164
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const-string v27, "java/lang/invoke/MethodHandles$Lookup"

    const-string v28, "java/lang/String"

    const-string v29, "java/lang/invoke/MethodType"

    const-string v30, "[Ljava/lang/Object;"

    .line 8165
    sget-object v31, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    sget-object v32, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    const-string v33, "[Ljava/lang/Class;"

    const-string v34, "[Ljava/lang/invoke/MethodType;"

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v35

    filled-new-array/range {v27 .. v35}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v19

    const-string v20, "java/lang/Class"

    const-string v21, "java/lang/reflect/Method"

    sget-object v22, Lnet/bytebuddy/jar/asm/Opcodes;->NULL:Ljava/lang/Integer;

    const-string v23, "[Ljava/lang/Object;"

    const-string v24, "[Ljava/lang/Object;"

    sget-object v25, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    sget-object v26, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    filled-new-array/range {v19 .. v26}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/Boolean"

    const-string v3, "valueOf"

    const-string v4, "(Z)Ljava/lang/Boolean;"

    const/4 v5, 0x0

    .line 8166
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8167
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8168
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x7

    .line 8169
    invoke-virtual {v6, v10, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0x19

    .line 8170
    invoke-virtual {v6, v0, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "java/util/Arrays"

    const-string v3, "asList"

    const-string v4, "([Ljava/lang/Object;)Ljava/util/List;"

    move-object/from16 v0, p3

    .line 8171
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8172
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8173
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x8

    .line 8174
    invoke-virtual {v6, v10, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x7

    .line 8175
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string v2, "java/util/Arrays"

    const-string v3, "asList"

    const-string v4, "([Ljava/lang/Object;)Ljava/util/List;"

    move-object/from16 v0, p3

    .line 8176
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8177
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/reflect/Method"

    const-string v3, "invoke"

    const-string v4, "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;"

    .line 8178
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "[B"

    const/16 v1, 0xc0

    .line 8179
    invoke-virtual {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 8180
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb6

    .line 8181
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "defineAnonymousClass"

    const-string v4, "(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Class;"

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x3a

    .line 8182
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/16 v1, 0x8

    .line 8183
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8184
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 8185
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ensureClassInitialized"

    const-string v4, "(Ljava/lang/Class;)V"

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x19

    .line 8186
    invoke-virtual {v6, v0, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "java/lang/invoke/MethodType"

    const-string v3, "parameterCount"

    const-string v4, "()I"

    move-object/from16 v0, p3

    .line 8187
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8188
    new-instance v9, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v9}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0x9a

    .line 8189
    invoke-virtual {v6, v0, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    const/16 v0, 0xbb

    const-string v1, "java/lang/invoke/ConstantCallSite"

    .line 8190
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 8191
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x19

    .line 8192
    invoke-virtual {v6, v0, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodType"

    const-string v3, "returnType"

    const-string v4, "()Ljava/lang/Class;"

    move-object/from16 v0, p3

    .line 8193
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x19

    .line 8194
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "java/lang/Class"

    const-string v3, "getDeclaredConstructors"

    const-string v4, "()[Ljava/lang/reflect/Constructor;"

    move-object/from16 v0, p3

    .line 8195
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8196
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x32

    .line 8197
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8198
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "java/lang/Object"

    const/16 v1, 0xbd

    .line 8199
    invoke-virtual {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/reflect/Constructor"

    const-string v3, "newInstance"

    const-string v4, "([Ljava/lang/Object;)Ljava/lang/Object;"

    move-object/from16 v0, p3

    .line 8200
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/invoke/MethodHandles"

    const-string v3, "constant"

    const-string v4, "(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;"

    .line 8201
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb7

    const-string v2, "java/lang/invoke/ConstantCallSite"

    const-string v3, "<init>"

    const-string v4, "(Ljava/lang/invoke/MethodHandle;)V"

    .line 8202
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8203
    new-instance v8, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v8}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0xa7

    .line 8204
    invoke-virtual {v6, v0, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 8205
    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 8206
    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v0, 0xbb

    const-string v1, "java/lang/invoke/ConstantCallSite"

    .line 8207
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 8208
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "IMPL_LOOKUP"

    const-string v1, "Ljava/lang/invoke/MethodHandles$Lookup;"

    const/16 v2, 0xb2

    const-string v3, "java/lang/invoke/MethodHandles$Lookup"

    .line 8209
    invoke-virtual {v6, v2, v3, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x19

    .line 8210
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v1, "get$Lambda"

    .line 8211
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 8212
    invoke-virtual {v6, v0, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "findStatic"

    const-string v4, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 8213
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb7

    const-string v2, "java/lang/invoke/ConstantCallSite"

    const-string v3, "<init>"

    const-string v4, "(Ljava/lang/invoke/MethodHandle;)V"

    .line 8214
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8215
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "java/lang/invoke/CallSite"

    .line 8216
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v0, 0xb0

    .line 8217
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xa

    .line 8218
    invoke-virtual {v6, v12, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 8219
    invoke-virtual/range {p3 .. p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 8220
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->IGNORE_ORIGINAL:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-object v0
.end method
