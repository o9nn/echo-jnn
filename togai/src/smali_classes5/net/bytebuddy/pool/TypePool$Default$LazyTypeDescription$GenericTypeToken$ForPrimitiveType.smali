.class public final enum Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;
.super Ljava/lang/Enum;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForPrimitiveType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;",
        ">;",
        "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

.field public static final enum BOOLEAN:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

.field public static final enum BYTE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

.field public static final enum CHAR:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

.field public static final enum DOUBLE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

.field public static final enum FLOAT:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

.field public static final enum INTEGER:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

.field public static final enum LONG:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

.field public static final enum SHORT:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

.field public static final enum VOID:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 3465
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->BOOLEAN:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3470
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v4, "BYTE"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->BYTE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3475
    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v5, "SHORT"

    invoke-direct {v2, v5, v3, v4}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->SHORT:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3480
    new-instance v3, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v6, "CHAR"

    invoke-direct {v3, v6, v4, v5}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->CHAR:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3485
    new-instance v4, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v7, "INTEGER"

    invoke-direct {v4, v7, v5, v6}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->INTEGER:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3490
    new-instance v5, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v8, "LONG"

    invoke-direct {v5, v8, v6, v7}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->LONG:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3495
    new-instance v6, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    const/4 v7, 0x6

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v9, "FLOAT"

    invoke-direct {v6, v9, v7, v8}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->FLOAT:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3500
    new-instance v7, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    const/4 v8, 0x7

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v10, "DOUBLE"

    invoke-direct {v7, v10, v8, v9}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->DOUBLE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3505
    new-instance v8, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    const/16 v9, 0x8

    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v11, "VOID"

    invoke-direct {v8, v11, v9, v10}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->VOID:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    filled-new-array/range {v0 .. v8}, [Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 3517
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3518
    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method public static of(C)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;
    .locals 3

    const/16 v0, 0x46

    if-eq p0, v0, :cond_5

    const/16 v0, 0x53

    if-eq p0, v0, :cond_4

    const/16 v0, 0x56

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 3548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid primitive type descriptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->DOUBLE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->CHAR:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->BYTE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0

    :cond_0
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->LONG:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0

    :cond_1
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->INTEGER:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0

    :cond_2
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->BOOLEAN:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0

    :cond_3
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->VOID:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0

    :cond_4
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->SHORT:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0

    :cond_5
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->FLOAT:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;
    .locals 1

    const-class v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3460
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    .line 3460
    invoke-virtual {v0}, [Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;

    return-object v0
.end method


# virtual methods
.method public getTypePathPrefix()Ljava/lang/String;
    .locals 3

    .line 3578
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A primitive type cannot be the owner of a nested type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPrimaryBound(Lnet/bytebuddy/pool/TypePool;)Z
    .locals 2

    .line 3571
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A primitive type cannot be a type variable bound: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toGenericType(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/lang/String;Ljava/util/Map;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/TypeVariableSource;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    .line 3559
    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;

    if-nez p4, :cond_0

    .line 3562
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {p2, p1, p3, p4, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType$LazyPrimitiveType;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Ljava/util/Map;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object p2
.end method
