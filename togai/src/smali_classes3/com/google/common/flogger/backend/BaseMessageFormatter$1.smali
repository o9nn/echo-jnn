.class synthetic Lcom/google/common/flogger/backend/BaseMessageFormatter$1;
.super Ljava/lang/Object;
.source "BaseMessageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/BaseMessageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$common$flogger$backend$FormatChar:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/google/common/flogger/backend/FormatChar;->values()[Lcom/google/common/flogger/backend/FormatChar;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/flogger/backend/BaseMessageFormatter$1;->$SwitchMap$com$google$common$flogger$backend$FormatChar:[I

    :try_start_0
    sget-object v1, Lcom/google/common/flogger/backend/FormatChar;->STRING:Lcom/google/common/flogger/backend/FormatChar;

    invoke-virtual {v1}, Lcom/google/common/flogger/backend/FormatChar;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/common/flogger/backend/BaseMessageFormatter$1;->$SwitchMap$com$google$common$flogger$backend$FormatChar:[I

    sget-object v1, Lcom/google/common/flogger/backend/FormatChar;->DECIMAL:Lcom/google/common/flogger/backend/FormatChar;

    invoke-virtual {v1}, Lcom/google/common/flogger/backend/FormatChar;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/google/common/flogger/backend/BaseMessageFormatter$1;->$SwitchMap$com$google$common$flogger$backend$FormatChar:[I

    sget-object v1, Lcom/google/common/flogger/backend/FormatChar;->BOOLEAN:Lcom/google/common/flogger/backend/FormatChar;

    invoke-virtual {v1}, Lcom/google/common/flogger/backend/FormatChar;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/google/common/flogger/backend/BaseMessageFormatter$1;->$SwitchMap$com$google$common$flogger$backend$FormatChar:[I

    sget-object v1, Lcom/google/common/flogger/backend/FormatChar;->HEX:Lcom/google/common/flogger/backend/FormatChar;

    invoke-virtual {v1}, Lcom/google/common/flogger/backend/FormatChar;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/google/common/flogger/backend/BaseMessageFormatter$1;->$SwitchMap$com$google$common$flogger$backend$FormatChar:[I

    sget-object v1, Lcom/google/common/flogger/backend/FormatChar;->CHAR:Lcom/google/common/flogger/backend/FormatChar;

    invoke-virtual {v1}, Lcom/google/common/flogger/backend/FormatChar;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
