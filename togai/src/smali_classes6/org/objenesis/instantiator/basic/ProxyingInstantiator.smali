.class public Lorg/objenesis/instantiator/basic/ProxyingInstantiator;
.super Ljava/lang/Object;
.source "ProxyingInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/objenesis/instantiator/ObjectInstantiator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/objenesis/instantiator/annotations/Instantiator;
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->STANDARD:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# static fields
.field private static final CODE:[B

.field private static final CODE_ATTRIBUTE_LENGTH:I

.field private static CONSTANT_POOL_COUNT:I = 0x9

.field private static final CONSTRUCTOR_DESC:Ljava/lang/String; = "()V"

.field private static final CONSTRUCTOR_NAME:Ljava/lang/String; = "<init>"

.field private static final INDEX_CLASS_SUPERCLASS:I = 0x2

.field private static final INDEX_CLASS_THIS:I = 0x1

.field private static final INDEX_UTF8_CLASS:I = 0x7

.field private static final INDEX_UTF8_CODE_ATTRIBUTE:I = 0x5

.field private static final INDEX_UTF8_CONSTRUCTOR_DESC:I = 0x4

.field private static final INDEX_UTF8_CONSTRUCTOR_NAME:I = 0x3

.field private static final INDEX_UTF8_SUPERCLASS:I = 0x8

.field private static final SUFFIX:Ljava/lang/String; = "$$$Objenesis"


# instance fields
.field private final newType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/objenesis/instantiator/basic/ProxyingInstantiator;->CODE:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    sput v0, Lorg/objenesis/instantiator/basic/ProxyingInstantiator;->CODE_ATTRIBUTE_LENGTH:I

    return-void

    :array_0
    .array-data 1
        0x2at
        -0x4ft
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "$$$Objenesis"

    .line 63
    invoke-static {p1, v0}, Lorg/objenesis/instantiator/basic/ProxyingInstantiator;->writeExtendingClass(Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object v1

    .line 66
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->defineClass(Ljava/lang/String;[BLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/objenesis/instantiator/basic/ProxyingInstantiator;->newType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Lorg/objenesis/ObjenesisException;

    invoke-direct {v0, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static writeExtendingClass(Ljava/lang/Class;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const-string v0, "L"

    .line 93
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->classNameToInternalClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    .line 99
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    sget-object v2, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->MAGIC:[B

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 102
    sget-object v2, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->VERSION:[B

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    sget v2, Lorg/objenesis/instantiator/basic/ProxyingInstantiator;->CONSTANT_POOL_COUNT:I

    .line 103
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x7

    .line 108
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 109
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 112
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x8

    .line 113
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x1

    .line 116
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v4, "<init>"

    .line 117
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v4, "()V"

    .line 121
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v4, "Code"

    .line 125
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 133
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 137
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 p0, 0x21

    .line 142
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 145
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p0, 0x2

    .line 148
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p0, 0x0

    .line 151
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 154
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 157
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 160
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p1, 0x3

    .line 161
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p1, 0x4

    .line 162
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 163
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p1, 0x5

    .line 166
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget p1, Lorg/objenesis/instantiator/basic/ProxyingInstantiator;->CODE_ATTRIBUTE_LENGTH:I

    .line 167
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 168
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 169
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object p1, Lorg/objenesis/instantiator/basic/ProxyingInstantiator;->CODE:[B

    .line 170
    array-length v0, p1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 172
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 173
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 176
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 191
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 186
    new-instance p1, Lorg/objenesis/ObjenesisException;

    invoke-direct {p1, p0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 180
    :goto_0
    :try_start_3
    new-instance p1, Lorg/objenesis/ObjenesisException;

    invoke-direct {p1, p0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v2, :cond_0

    .line 184
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 186
    new-instance p1, Lorg/objenesis/ObjenesisException;

    invoke-direct {p1, p0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_2
    throw p0
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/objenesis/instantiator/basic/ProxyingInstantiator;->newType:Ljava/lang/Class;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 77
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
