.class public Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;
.super Ljava/lang/Object;
.source "FieldAccess.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AccessDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;,
        Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;,
        Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->this$0:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 0

    .line 195
    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    return-object p0
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->this$0:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->this$0:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->this$0:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 215
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;-><init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)V

    return-object v0
.end method

.method public write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 222
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldPutInstruction;-><init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)V

    return-object v0
.end method
