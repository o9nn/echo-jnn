.class public final enum Lorg/mockito/mock/SerializableMode;
.super Ljava/lang/Enum;
.source "SerializableMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/mock/SerializableMode;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/mock/SerializableMode;

.field public static final enum ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end field

.field public static final enum BASIC:Lorg/mockito/mock/SerializableMode;

.field public static final enum NONE:Lorg/mockito/mock/SerializableMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lorg/mockito/mock/SerializableMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mockito/mock/SerializableMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    .line 23
    new-instance v1, Lorg/mockito/mock/SerializableMode;

    const-string v2, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mockito/mock/SerializableMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mockito/mock/SerializableMode;->BASIC:Lorg/mockito/mock/SerializableMode;

    .line 28
    new-instance v2, Lorg/mockito/mock/SerializableMode;

    const-string v3, "ACROSS_CLASSLOADERS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mockito/mock/SerializableMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    filled-new-array {v0, v1, v2}, [Lorg/mockito/mock/SerializableMode;

    move-result-object v0

    sput-object v0, Lorg/mockito/mock/SerializableMode;->$VALUES:[Lorg/mockito/mock/SerializableMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/mock/SerializableMode;
    .locals 1

    const-class v0, Lorg/mockito/mock/SerializableMode;

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/mock/SerializableMode;

    return-object p0
.end method

.method public static values()[Lorg/mockito/mock/SerializableMode;
    .locals 1

    sget-object v0, Lorg/mockito/mock/SerializableMode;->$VALUES:[Lorg/mockito/mock/SerializableMode;

    .line 12
    invoke-virtual {v0}, [Lorg/mockito/mock/SerializableMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/mock/SerializableMode;

    return-object v0
.end method
