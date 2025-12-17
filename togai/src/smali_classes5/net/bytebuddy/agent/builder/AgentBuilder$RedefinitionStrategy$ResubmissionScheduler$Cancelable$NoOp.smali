.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5892
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5887
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;

    .line 5887
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;

    .line 5887
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$NoOp;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method
