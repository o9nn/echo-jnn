.class public final enum Lorg/mockito/internal/invocation/RealMethod$IsIllegal;
.super Ljava/lang/Enum;
.source "RealMethod.java"

# interfaces
.implements Lorg/mockito/internal/invocation/RealMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/invocation/RealMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IsIllegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/internal/invocation/RealMethod$IsIllegal;",
        ">;",
        "Lorg/mockito/internal/invocation/RealMethod;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/internal/invocation/RealMethod$IsIllegal;

.field public static final enum INSTANCE:Lorg/mockito/internal/invocation/RealMethod$IsIllegal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/mockito/internal/invocation/RealMethod$IsIllegal;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/invocation/RealMethod$IsIllegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/invocation/RealMethod$IsIllegal;->INSTANCE:Lorg/mockito/internal/invocation/RealMethod$IsIllegal;

    filled-new-array {v0}, [Lorg/mockito/internal/invocation/RealMethod$IsIllegal;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/invocation/RealMethod$IsIllegal;->$VALUES:[Lorg/mockito/internal/invocation/RealMethod$IsIllegal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/internal/invocation/RealMethod$IsIllegal;
    .locals 1

    const-class v0, Lorg/mockito/internal/invocation/RealMethod$IsIllegal;

    .line 20
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/internal/invocation/RealMethod$IsIllegal;

    return-object p0
.end method

.method public static values()[Lorg/mockito/internal/invocation/RealMethod$IsIllegal;
    .locals 1

    sget-object v0, Lorg/mockito/internal/invocation/RealMethod$IsIllegal;->$VALUES:[Lorg/mockito/internal/invocation/RealMethod$IsIllegal;

    .line 20
    invoke-virtual {v0}, [Lorg/mockito/internal/invocation/RealMethod$IsIllegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/internal/invocation/RealMethod$IsIllegal;

    return-object v0
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public isInvokable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
