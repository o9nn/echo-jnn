.class public Lnet/bytebuddy/implementation/bytecode/constant/SerializedConstant;
.super Ljava/lang/Object;
.source "SerializedConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field private final serialization:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/SerializedConstant;->serialization:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/io/Serializable;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    if-nez p0, :cond_0

    .line 63
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    return-object p0

    .line 66
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 73
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/SerializedConstant;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/implementation/bytecode/constant/SerializedConstant;-><init>(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 71
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 72
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot serialize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 9

    .line 91
    :try_start_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/16 v1, 0xa

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const-class v2, Ljava/io/ObjectInputStream;

    .line 92
    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/io/ByteArrayInputStream;

    .line 94
    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/constant/SerializedConstant;->serialization:Ljava/lang/String;

    invoke-direct {v2, v5}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v5}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v5, Ljava/lang/String;

    const-string v6, "getBytes"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    .line 98
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-direct {v2, v5}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    const-class v5, Ljava/io/ByteArrayInputStream;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, [B

    aput-object v7, v6, v3

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-direct {v2, v5}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v1, v5

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    const-class v5, Ljava/io/ObjectInputStream;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    aput-object v6, v4, v3

    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-direct {v2, v4}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v4, Ljava/io/ObjectInputStream;

    const-string v5, "readObject"

    new-array v3, v3, [Ljava/lang/Class;

    .line 101
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 102
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not locate Java API method"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/constant/SerializedConstant;->serialization:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/SerializedConstant;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/SerializedConstant;->serialization:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/SerializedConstant;->serialization:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
