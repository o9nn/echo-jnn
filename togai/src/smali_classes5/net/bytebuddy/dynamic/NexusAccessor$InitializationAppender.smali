.class public Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;
.super Ljava/lang/Object;
.source "NexusAccessor.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/NexusAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializationAppender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final identification:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;->identification:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 17

    .line 142
    :try_start_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;

    const/4 v1, 0x1

    new-array v2, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    new-instance v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/16 v4, 0xa

    new-array v4, v4, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    new-instance v5, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v6, Ljava/lang/ClassLoader;

    const-string v7, "getSystemClassLoader"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    .line 143
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    const-class v6, Lnet/bytebuddy/dynamic/Nexus;

    .line 144
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    new-instance v5, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v6, Ljava/lang/ClassLoader;

    const-string v7, "loadClass"

    new-array v9, v1, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v8

    .line 145
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    new-instance v5, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    const-string v7, "initialize"

    invoke-direct {v5, v7}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x3

    aput-object v5, v4, v7

    sget-object v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;->CLASS:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 147
    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->forType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    move-result-object v5

    new-array v7, v6, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    sget-object v9, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    .line 149
    invoke-static {v9}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v9

    aput-object v9, v7, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 150
    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    invoke-static {v9}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v9

    aput-object v9, v7, v1

    .line 148
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v4, v7

    new-instance v5, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v7, Ljava/lang/Class;

    const-string v9, "getMethod"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v8

    const-class v11, [Ljava/lang/Class;

    aput-object v11, v10, v1

    .line 151
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-direct {v5, v7}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v4, v7

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    const/4 v7, 0x6

    aput-object v5, v4, v7

    sget-object v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 153
    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->forType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    move-result-object v5

    new-array v7, v6, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 155
    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v9

    invoke-interface {v9}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    invoke-static {v9}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v9

    aput-object v9, v7, v8

    new-instance v9, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v10, v6, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v11, p0

    :try_start_1
    iget v12, v11, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;->identification:I

    .line 157
    invoke-static {v12}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v12

    aput-object v12, v10, v8

    new-instance v12, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v13, Ljava/lang/Integer;

    const-string v14, "valueOf"

    new-array v15, v1, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v8

    .line 158
    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-direct {v12, v13}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v12}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v12

    aput-object v12, v10, v1

    invoke-direct {v9, v10}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    aput-object v9, v7, v1

    .line 154
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    const/4 v7, 0x7

    aput-object v5, v4, v7

    new-instance v5, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v7, Ljava/lang/reflect/Method;

    const-string v9, "invoke"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    aput-object v10, v6, v8

    const-class v10, [Ljava/lang/Object;

    aput-object v10, v6, v1

    .line 159
    invoke-virtual {v7, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v5, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    const/16 v5, 0x8

    aput-object v1, v4, v5

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    const/16 v5, 0x9

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    aput-object v3, v2, v8

    invoke-direct {v0, v2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v11, p0

    .line 163
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot locate method"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    iget v2, p0, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;->identification:I

    check-cast p1, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;

    iget p1, p1, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;->identification:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;->identification:I

    add-int/2addr v0, v1

    return v0
.end method
