.class public Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLabel"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final label:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 6390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;->label:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 2

    const/16 v0, 0xa7

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;->label:Lnet/bytebuddy/jar/asm/Label;

    .line 6398
    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;->label:Lnet/bytebuddy/jar/asm/Label;

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;->label:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/Label;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;->label:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Label;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
