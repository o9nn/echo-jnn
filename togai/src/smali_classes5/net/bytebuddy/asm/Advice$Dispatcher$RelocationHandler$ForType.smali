.class public Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 6665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method static synthetic access$1500(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    .line 6653
    iget-object p0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object p0
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;
    .locals 2

    .line 6677
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6678
    sget-object p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

    return-object p0

    .line 6679
    :cond_0
    const-class v0, Lnet/bytebuddy/asm/Advice$OnDefaultValue;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 6680
    invoke-static {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;

    move-result-object p0

    return-object p0

    .line 6681
    :cond_1
    const-class v0, Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    .line 6682
    invoke-static {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;

    move-result-object p0

    return-object p0

    .line 6683
    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6686
    new-instance p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;

    invoke-direct {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object p1

    .line 6684
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot skip method by instance type for primitive return type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;
    .locals 1

    .line 6694
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)V

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
