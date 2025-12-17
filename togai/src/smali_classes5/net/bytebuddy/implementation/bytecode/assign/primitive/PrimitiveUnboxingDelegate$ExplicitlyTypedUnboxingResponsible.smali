.class public final enum Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;
.super Ljava/lang/Enum;
.source "PrimitiveUnboxingDelegate.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$UnboxingResponsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ExplicitlyTypedUnboxingResponsible"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$UnboxingResponsible;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;


# instance fields
.field private final primitiveUnboxingDelegate:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 221
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    const/4 v1, 0x0

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    .line 226
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    const/4 v2, 0x1

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v4, "BYTE"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    .line 231
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    const/4 v3, 0x2

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v5, "SHORT"

    invoke-direct {v2, v5, v3, v4}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    .line 236
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    const/4 v4, 0x3

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v6, "CHARACTER"

    invoke-direct {v3, v6, v4, v5}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    .line 241
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    const/4 v5, 0x4

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v7, "INTEGER"

    invoke-direct {v4, v7, v5, v6}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    .line 246
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    const/4 v6, 0x5

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v8, "LONG"

    invoke-direct {v5, v8, v6, v7}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    .line 251
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    const/4 v7, 0x6

    sget-object v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v9, "FLOAT"

    invoke-direct {v6, v9, v7, v8}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    .line 256
    new-instance v7, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    const/4 v8, 0x7

    sget-object v9, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v10, "DOUBLE"

    invoke-direct {v7, v10, v8, v9}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v7, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    filled-new-array/range {v0 .. v7}, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;",
            ")V"
        }
    .end annotation

    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->primitiveUnboxingDelegate:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    .line 216
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    .line 216
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object v0
.end method


# virtual methods
.method public assignUnboxedTo(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 276
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 p3, 0x2

    new-array p3, p3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->primitiveUnboxingDelegate:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 278
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->access$000(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->forPrimitive(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->widenTo(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-direct {p2, p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p2
.end method
