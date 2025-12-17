.class public final enum Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;
.super Ljava/lang/Enum;
.source "ArrayFactory.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForPrimitiveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;


# instance fields
.field private final creationOpcode:I

.field private final storageOpcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 152
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x54

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    .line 157
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    const/4 v2, 0x1

    const/16 v5, 0x8

    const-string v6, "BYTE"

    invoke-direct {v1, v6, v2, v5, v4}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->BYTE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    .line 162
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    const/16 v4, 0x9

    const/16 v5, 0x56

    const-string v6, "SHORT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v5}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->SHORT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    .line 167
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    const/16 v5, 0x55

    const-string v6, "CHARACTER"

    const/4 v7, 0x3

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8, v5}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    .line 172
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    const/16 v6, 0xa

    const/16 v7, 0x4f

    const-string v9, "INTEGER"

    invoke-direct {v5, v9, v3, v6, v7}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->INTEGER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    .line 177
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    const/16 v3, 0xb

    const/16 v7, 0x50

    const-string v9, "LONG"

    invoke-direct {v6, v9, v8, v3, v7}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->LONG:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    .line 182
    new-instance v7, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    const/4 v3, 0x6

    const/16 v8, 0x51

    const-string v9, "FLOAT"

    invoke-direct {v7, v9, v3, v3, v8}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->FLOAT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    .line 187
    new-instance v8, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    const/4 v3, 0x7

    const/16 v9, 0x52

    const-string v10, "DOUBLE"

    invoke-direct {v8, v10, v3, v3, v9}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    filled-new-array/range {v0 .. v7}, [Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->creationOpcode:I

    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->storageOpcode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    .line 147
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    .line 147
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    const/16 p2, 0xbc

    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->creationOpcode:I

    .line 221
    invoke-virtual {p1, p2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    .line 222
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->ARRAY_CREATION_SIZE_CHANGE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public getStorageOpcode()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->storageOpcode:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
