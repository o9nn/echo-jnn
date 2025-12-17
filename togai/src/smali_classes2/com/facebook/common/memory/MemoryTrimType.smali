.class public final enum Lcom/facebook/common/memory/MemoryTrimType;
.super Ljava/lang/Enum;
.source "MemoryTrimType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/common/memory/MemoryTrimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnAppBackgrounded:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnCloseToDalvikHeapLimit:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnJavaMemoryRed:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnJavaMemoryYellow:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnSystemLowMemoryWhileAppInBackgroundLowSeverity:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnSystemLowMemoryWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnSystemMemoryCriticallyLowWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnSystemMemoryRed:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnSystemMemoryYellow:Lcom/facebook/common/memory/MemoryTrimType;


# instance fields
.field private mSuggestedTrimRatio:D


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 23
    new-instance v0, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v1, "OnCloseToDalvikHeapLimit"

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/facebook/common/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/facebook/common/memory/MemoryTrimType;

    .line 26
    new-instance v1, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v2, "OnSystemMemoryCriticallyLowWhileAppInForeground"

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v1, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemMemoryCriticallyLowWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;

    .line 29
    new-instance v2, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v5, "OnSystemLowMemoryWhileAppInForeground"

    const/4 v8, 0x2

    invoke-direct {v2, v5, v8, v3, v4}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v2, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;

    .line 32
    new-instance v5, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v8, "OnSystemLowMemoryWhileAppInBackgroundLowSeverity"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v5, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInBackgroundLowSeverity:Lcom/facebook/common/memory/MemoryTrimType;

    .line 35
    new-instance v8, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v9, "OnAppBackgrounded"

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10, v6, v7}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v8, Lcom/facebook/common/memory/MemoryTrimType;->OnAppBackgrounded:Lcom/facebook/common/memory/MemoryTrimType;

    .line 38
    new-instance v9, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v10, "OnJavaMemoryRed"

    const/4 v11, 0x5

    invoke-direct {v9, v10, v11, v6, v7}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v9, Lcom/facebook/common/memory/MemoryTrimType;->OnJavaMemoryRed:Lcom/facebook/common/memory/MemoryTrimType;

    .line 41
    new-instance v10, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v11, "OnJavaMemoryYellow"

    const/4 v12, 0x6

    invoke-direct {v10, v11, v12, v3, v4}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v10, Lcom/facebook/common/memory/MemoryTrimType;->OnJavaMemoryYellow:Lcom/facebook/common/memory/MemoryTrimType;

    .line 44
    new-instance v11, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v12, "OnSystemMemoryRed"

    const/4 v13, 0x7

    invoke-direct {v11, v12, v13, v6, v7}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v11, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemMemoryRed:Lcom/facebook/common/memory/MemoryTrimType;

    .line 47
    new-instance v12, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v6, "OnSystemMemoryYellow"

    const/16 v7, 0x8

    invoke-direct {v12, v6, v7, v3, v4}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v12, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemMemoryYellow:Lcom/facebook/common/memory/MemoryTrimType;

    move-object v3, v5

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    filled-new-array/range {v0 .. v8}, [Lcom/facebook/common/memory/MemoryTrimType;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/memory/MemoryTrimType;->$VALUES:[Lcom/facebook/common/memory/MemoryTrimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/facebook/common/memory/MemoryTrimType;->mSuggestedTrimRatio:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/memory/MemoryTrimType;
    .locals 1

    const-class v0, Lcom/facebook/common/memory/MemoryTrimType;

    .line 19
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/common/memory/MemoryTrimType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/common/memory/MemoryTrimType;
    .locals 1

    sget-object v0, Lcom/facebook/common/memory/MemoryTrimType;->$VALUES:[Lcom/facebook/common/memory/MemoryTrimType;

    .line 19
    invoke-virtual {v0}, [Lcom/facebook/common/memory/MemoryTrimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/memory/MemoryTrimType;

    return-object v0
.end method


# virtual methods
.method public getSuggestedTrimRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/common/memory/MemoryTrimType;->mSuggestedTrimRatio:D

    return-wide v0
.end method
