.class public Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;
.super Ljava/lang/Object;
.source "FixedValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FixedValue$ForOriginType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final originType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FixedValue$ForOriginType;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    .line 359
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    .line 362
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 363
    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 359
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->originType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue$ForOriginType$Appender;->this$0:Lnet/bytebuddy/implementation/FixedValue$ForOriginType;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/FixedValue$ForOriginType;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
