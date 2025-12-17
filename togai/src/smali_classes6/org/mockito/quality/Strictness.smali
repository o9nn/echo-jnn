.class public final enum Lorg/mockito/quality/Strictness;
.super Ljava/lang/Enum;
.source "Strictness.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/quality/Strictness;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/quality/Strictness;

.field public static final enum LENIENT:Lorg/mockito/quality/Strictness;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end field

.field public static final enum STRICT_STUBS:Lorg/mockito/quality/Strictness;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end field

.field public static final enum WARN:Lorg/mockito/quality/Strictness;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Lorg/mockito/quality/Strictness;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mockito/quality/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    .line 65
    new-instance v1, Lorg/mockito/quality/Strictness;

    const-string v2, "WARN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mockito/quality/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mockito/quality/Strictness;->WARN:Lorg/mockito/quality/Strictness;

    .line 91
    new-instance v2, Lorg/mockito/quality/Strictness;

    const-string v3, "STRICT_STUBS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mockito/quality/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    filled-new-array {v0, v1, v2}, [Lorg/mockito/quality/Strictness;

    move-result-object v0

    sput-object v0, Lorg/mockito/quality/Strictness;->$VALUES:[Lorg/mockito/quality/Strictness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/quality/Strictness;
    .locals 1

    const-class v0, Lorg/mockito/quality/Strictness;

    .line 41
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/quality/Strictness;

    return-object p0
.end method

.method public static values()[Lorg/mockito/quality/Strictness;
    .locals 1

    sget-object v0, Lorg/mockito/quality/Strictness;->$VALUES:[Lorg/mockito/quality/Strictness;

    .line 41
    invoke-virtual {v0}, [Lorg/mockito/quality/Strictness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/quality/Strictness;

    return-object v0
.end method
