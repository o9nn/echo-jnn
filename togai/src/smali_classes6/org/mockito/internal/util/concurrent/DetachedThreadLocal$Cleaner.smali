.class public final enum Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;
.super Ljava/lang/Enum;
.source "DetachedThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cleaner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

.field public static final enum INLINE:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

.field public static final enum MANUAL:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

.field public static final enum THREAD:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 136
    new-instance v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    const-string v1, "THREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->THREAD:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    new-instance v1, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    const-string v2, "INLINE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    new-instance v2, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    const-string v3, "MANUAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->MANUAL:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    filled-new-array {v0, v1, v2}, [Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->$VALUES:[Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;
    .locals 1

    const-class v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    .line 135
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    return-object p0
.end method

.method public static values()[Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;
    .locals 1

    sget-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->$VALUES:[Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    .line 135
    invoke-virtual {v0}, [Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    return-object v0
.end method
