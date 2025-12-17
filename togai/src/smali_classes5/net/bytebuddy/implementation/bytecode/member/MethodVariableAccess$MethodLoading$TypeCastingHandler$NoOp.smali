.class public final enum Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;
.super Ljava/lang/Enum;
.source "MethodVariableAccess.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 291
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    .line 286
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    .line 286
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$NoOp;

    return-object v0
.end method


# virtual methods
.method public ofIndex(Lnet/bytebuddy/description/type/TypeDescription;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    .line 297
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object p1
.end method
