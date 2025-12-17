.class public final enum Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;
.super Ljava/lang/Enum;
.source "Assigner.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/assign/Assigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Refusing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 140
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;

    .line 135
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;

    .line 135
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;

    return-object v0
.end method


# virtual methods
.method public assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    .line 146
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    return-object p1
.end method
