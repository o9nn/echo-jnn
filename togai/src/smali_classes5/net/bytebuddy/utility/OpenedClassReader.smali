.class public Lnet/bytebuddy/utility/OpenedClassReader;
.super Ljava/lang/Object;
.source "OpenedClassReader.java"


# static fields
.field public static final ASM_API:I

.field public static final EXPERIMENTAL:Z

.field public static final EXPERIMENTAL_PROPERTY:Ljava/lang/String; = "net.bytebuddy.experimental"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    :try_start_0
    new-instance v0, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v1, "net.bytebuddy.experimental"

    invoke-direct {v0, v1}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lnet/bytebuddy/utility/OpenedClassReader;->EXPERIMENTAL:Z

    const/high16 v0, 0x70000

    sput v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of([B)Lnet/bytebuddy/jar/asm/ClassReader;
    .locals 8

    sget-boolean v0, Lnet/bytebuddy/utility/OpenedClassReader;->EXPERIMENTAL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 73
    aget-byte v2, p0, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x5

    aget-byte v5, p0, v4

    aput-byte v5, v1, v2

    const/4 v2, 0x2

    const/4 v5, 0x6

    aget-byte v6, p0, v5

    aput-byte v6, v1, v2

    const/4 v2, 0x3

    const/4 v6, 0x7

    aget-byte v7, p0, v6

    aput-byte v7, v1, v2

    .line 74
    aput-byte v3, p0, v0

    .line 75
    aput-byte v3, p0, v4

    .line 76
    aput-byte v3, p0, v5

    const/16 v2, 0x38

    .line 77
    aput-byte v2, p0, v6

    .line 78
    new-instance v2, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v2, p0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    .line 79
    invoke-static {v1, v3, p0, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 82
    :cond_0
    new-instance v0, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    return-object v0
.end method
