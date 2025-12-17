.class public final enum Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
.super Ljava/lang/Enum;
.source "Assigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Typing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

.field public static final enum DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

.field public static final enum STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# instance fields
.field private final dynamic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 59
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 64
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    const-string v2, "DYNAMIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    filled-new-array {v0, v1}, [Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->dynamic:Z

    return-void
.end method

.method public static of(Z)Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 54
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 54
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    return-object v0
.end method


# virtual methods
.method public isDynamic()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->dynamic:Z

    return v0
.end method
