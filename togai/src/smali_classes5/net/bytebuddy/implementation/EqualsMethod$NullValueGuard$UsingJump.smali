.class public Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;
.super Ljava/lang/Object;
.source "EqualsMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingJump"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;,
        Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$BeforeInstruction;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;

.field private static final REFERENCE:[Ljava/lang/Object;


# instance fields
.field private final endOfBlock:Lnet/bytebuddy/jar/asm/Label;

.field private final firstValueNull:Lnet/bytebuddy/jar/asm/Label;

.field private final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final secondValueNull:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->EMPTY:[Ljava/lang/Object;

    .line 413
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->REFERENCE:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 442
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->firstValueNull:Lnet/bytebuddy/jar/asm/Label;

    .line 443
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->secondValueNull:Lnet/bytebuddy/jar/asm/Label;

    .line 444
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->endOfBlock:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method

.method static synthetic access$300(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 0

    .line 403
    iget-object p0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    return-object p0
.end method

.method static synthetic access$400(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;
    .locals 0

    .line 403
    iget-object p0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->secondValueNull:Lnet/bytebuddy/jar/asm/Label;

    return-object p0
.end method

.method static synthetic access$500(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;
    .locals 0

    .line 403
    iget-object p0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->firstValueNull:Lnet/bytebuddy/jar/asm/Label;

    return-object p0
.end method

.method static synthetic access$600(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;
    .locals 0

    .line 403
    iget-object p0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->endOfBlock:Lnet/bytebuddy/jar/asm/Label;

    return-object p0
.end method

.method static synthetic access$700()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->EMPTY:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->REFERENCE:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public after()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 458
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;-><init>(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)V

    return-object v0
.end method

.method public before()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 451
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$BeforeInstruction;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$BeforeInstruction;-><init>(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    iget-object v3, p1, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->firstValueNull:Lnet/bytebuddy/jar/asm/Label;

    iget-object v3, p1, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->firstValueNull:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/Label;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->secondValueNull:Lnet/bytebuddy/jar/asm/Label;

    iget-object v3, p1, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->secondValueNull:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/Label;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->endOfBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object p1, p1, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->endOfBlock:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/Label;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getRequiredVariablePadding()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->firstValueNull:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Label;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->secondValueNull:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Label;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->endOfBlock:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Label;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
