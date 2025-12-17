.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;
.super Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadWrite"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final valueWrites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;)V"
        }
    .end annotation

    .line 1026
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;->valueWrites:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;->valueWrites:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;->valueWrites:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;->valueWrites:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 1034
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;->target:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadWrite;->valueWrites:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->forEach(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    return-object v0
.end method
