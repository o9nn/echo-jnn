.class final enum Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;
.super Ljava/lang/Enum;
.source "SimpleMessageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/SimpleMessageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

.field public static final enum DEFAULT:Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

.field public static final enum WITH_LOG_SITE:Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 275
    new-instance v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;->DEFAULT:Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    .line 277
    new-instance v1, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    const-string v2, "WITH_LOG_SITE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;->WITH_LOG_SITE:Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    filled-new-array {v0, v1}, [Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;->$VALUES:[Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;
    .locals 1

    const-class v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    .line 272
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    return-object p0
.end method

.method public static values()[Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;->$VALUES:[Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    .line 272
    invoke-virtual {v0}, [Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;

    return-object v0
.end method
