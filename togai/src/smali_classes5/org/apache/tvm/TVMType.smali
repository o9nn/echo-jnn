.class public Lorg/apache/tvm/TVMType;
.super Ljava/lang/Object;
.source "TVMType.java"


# static fields
.field public static final FLOAT:I = 0x2

.field public static final HANDLE:I = 0x4

.field public static final INT:I = 0x0

.field public static final UINT:I = 0x1


# instance fields
.field public final bits:I

.field public final lanes:I

.field public final numOfBytes:I

.field public final typeCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, v0}, Lorg/apache/tvm/TVMType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/tvm/TVMType;->lanes:I

    const-string p2, "int"

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "Do not know how to handle type "

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/4 p2, 0x3

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const-string p2, "uint"

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x4

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    iput p2, p0, Lorg/apache/tvm/TVMType;->typeCode:I

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_1
    const-string p2, "float"

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    iput p2, p0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/4 p2, 0x5

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_2
    const-string p2, "handle"

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iput v1, p0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/16 p2, 0x40

    :goto_0
    if-nez p2, :cond_3

    const/16 p2, 0x20

    :cond_3
    iput p2, p0, Lorg/apache/tvm/TVMType;->bits:I

    add-int/lit8 v1, p2, -0x1

    and-int/2addr v1, p2

    if-nez v1, :cond_4

    const/16 v1, 0x8

    if-lt p2, v1, :cond_4

    .line 58
    div-int/2addr p2, v1

    iput p2, p0, Lorg/apache/tvm/TVMType;->numOfBytes:I

    return-void

    .line 56
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 52
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 70
    instance-of v1, p1, Lorg/apache/tvm/TVMType;

    if-eqz v1, :cond_0

    .line 71
    check-cast p1, Lorg/apache/tvm/TVMType;

    iget v1, p0, Lorg/apache/tvm/TVMType;->bits:I

    .line 72
    iget v2, p1, Lorg/apache/tvm/TVMType;->bits:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/tvm/TVMType;->typeCode:I

    iget v2, p1, Lorg/apache/tvm/TVMType;->typeCode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/tvm/TVMType;->lanes:I

    iget p1, p1, Lorg/apache/tvm/TVMType;->lanes:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/tvm/TVMType;->typeCode:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/apache/tvm/TVMType;->bits:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/tvm/TVMType;->lanes:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string v0, "Unknown"

    goto :goto_0

    :cond_0
    const-string v0, "handle"

    goto :goto_0

    :cond_1
    const-string v0, "float"

    goto :goto_0

    :cond_2
    const-string v0, "uint"

    goto :goto_0

    :cond_3
    const-string v0, "int"

    :goto_0
    iget v2, p0, Lorg/apache/tvm/TVMType;->bits:I

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/tvm/TVMType;->lanes:I

    if-eq v2, v1, :cond_4

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method
