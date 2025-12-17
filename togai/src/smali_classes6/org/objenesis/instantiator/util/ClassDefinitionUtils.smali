.class public final Lorg/objenesis/instantiator/util/ClassDefinitionUtils;
.super Ljava/lang/Object;
.source "ClassDefinitionUtils.java"


# static fields
.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_ANNOTATION:I = 0x2000

.field public static final ACC_ENUM:I = 0x4000

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_SUPER:I = 0x20

.field public static final ACC_SYNTHETIC:I = 0x1000

.field public static final CONSTANT_Class:I = 0x7

.field public static final CONSTANT_Double:I = 0x6

.field public static final CONSTANT_Fieldref:I = 0x9

.field public static final CONSTANT_Float:I = 0x4

.field public static final CONSTANT_Integer:I = 0x3

.field public static final CONSTANT_InterfaceMethodref:I = 0xb

.field public static final CONSTANT_InvokeDynamic:I = 0x12

.field public static final CONSTANT_Long:I = 0x5

.field public static final CONSTANT_MethodHandle:I = 0xf

.field public static final CONSTANT_MethodType:I = 0x10

.field public static final CONSTANT_Methodref:I = 0xa

.field public static final CONSTANT_NameAndType:I = 0xc

.field public static final CONSTANT_String:I = 0x8

.field public static final CONSTANT_Utf8:I = 0x1

.field public static final MAGIC:[B

.field public static final OPS_aload_0:B = 0x2at

.field public static final OPS_areturn:B = -0x50t

.field public static final OPS_dup:B = 0x59t

.field public static final OPS_invokespecial:B = -0x49t

.field public static final OPS_new:B = -0x45t

.field public static final OPS_return:B = -0x4ft

.field private static final PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

.field public static final VERSION:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->MAGIC:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->VERSION:[B

    .line 79
    new-instance v0, Lorg/objenesis/instantiator/util/ClassDefinitionUtils$1;

    invoke-direct {v0}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/ProtectionDomain;

    sput-object v0, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    return-void

    nop

    :array_0
    .array-data 1
        -0x36t
        -0x2t
        -0x46t
        -0x42t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x31t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classNameToInternalClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 164
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static classNameToResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->classNameToInternalClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static defineClass(Ljava/lang/String;[BLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-static {}, Lorg/objenesis/instantiator/util/UnsafeUtils;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    const/4 v3, 0x0

    array-length v4, p1

    sget-object v6, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->defineClass(Ljava/lang/String;[BIILjava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    .line 102
    invoke-static {p0, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    return-object p1
.end method

.method public static getExistingClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 189
    :try_start_0
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readClass(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-static {p0}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->classNameToResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x9c4

    new-array v1, v0, [B

    const-class v2, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 124
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-ge v2, v0, :cond_0

    .line 134
    new-array p0, v2, [B

    const/4 v0, 0x0

    .line 135
    invoke-static {v1, v0, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 131
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The class is longer that 2500 bytes which is currently unsupported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    .line 127
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static writeClass(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    throw p0
.end method
