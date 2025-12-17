.class public final enum Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;
.super Ljava/lang/Enum;
.source "InferenceCalculatorProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheWritingBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior$CacheWritingBehaviorVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

.field public static final enum NO_WRITE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

.field public static final NO_WRITE_VALUE:I = 0x0

.field public static final enum TRY_WRITE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

.field public static final TRY_WRITE_VALUE:I = 0x1

.field public static final enum WRITE_OR_ERROR:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

.field public static final WRITE_OR_ERROR_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 849
    new-instance v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    const-string v1, "NO_WRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->NO_WRITE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    .line 857
    new-instance v1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    const-string v2, "TRY_WRITE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->TRY_WRITE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    .line 865
    new-instance v2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    const-string v3, "WRITE_OR_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->WRITE_OR_ERROR:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    filled-new-array {v0, v1, v2}, [Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->$VALUES:[Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    .line 923
    new-instance v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior$1;

    invoke-direct {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior$1;-><init>()V

    sput-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 947
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->WRITE_OR_ERROR:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->TRY_WRITE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->NO_WRITE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 933
    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior$CacheWritingBehaviorVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 906
    invoke-static {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->forNumber(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    .line 840
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->$VALUES:[Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    .line 840
    invoke-virtual {v0}, [Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->value:I

    return v0
.end method
