.class public Lnet/bytebuddy/implementation/Implementation$Simple;
.super Ljava/lang/Object;
.source "Implementation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# direct methods
.method public varargs constructor <init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V
    .locals 1

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1859
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 1

    .line 1868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1869
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-void
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-object p1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Simple;

    iget-object p1, p1, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
