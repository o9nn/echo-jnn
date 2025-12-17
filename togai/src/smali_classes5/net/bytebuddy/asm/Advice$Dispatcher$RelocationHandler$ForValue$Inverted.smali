.class public Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Inverted"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 6585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;
    .locals 3

    .line 6591
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p2, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;Z)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    invoke-virtual {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
