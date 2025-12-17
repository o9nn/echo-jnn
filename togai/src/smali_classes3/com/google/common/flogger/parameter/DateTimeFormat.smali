.class public final enum Lcom/google/common/flogger/parameter/DateTimeFormat;
.super Ljava/lang/Enum;
.source "DateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/flogger/parameter/DateTimeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATETIME_FULL:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATETIME_HOURS_MINUTES:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATETIME_HOURS_MINUTES_SECONDS:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATETIME_HOURS_MINUTES_SECONDS_12H:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATETIME_MONTH_DAY_YEAR:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATETIME_YEAR_MONTH_DAY:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_CENTURY_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_DAY_FULL:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_DAY_OF_MONTH:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_DAY_OF_MONTH_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_DAY_OF_YEAR_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_DAY_SHORT:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_MONTH_FULL:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_MONTH_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_MONTH_SHORT:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_MONTH_SHORT_ALT:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_YEAR_OF_CENTURY_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum DATE_YEAR_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/google/common/flogger/parameter/DateTimeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TIME_AM_PM:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_EPOCH_MILLIS:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_EPOCH_SECONDS:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_HOUR_12H:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_HOUR_12H_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_HOUR_OF_DAY:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_HOUR_OF_DAY_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_MILLIS_OF_SECOND_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_MINUTE_OF_HOUR_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_NANOS_OF_SECOND_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_SECONDS_OF_MINUTE_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_TZ_NUMERIC:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field public static final enum TIME_TZ_SHORT:Lcom/google/common/flogger/parameter/DateTimeFormat;


# instance fields
.field private final formatChar:C


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 37
    new-instance v1, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v0, v1

    const/16 v2, 0x48

    const-string v3, "TIME_HOUR_OF_DAY_PADDED"

    const/4 v15, 0x0

    invoke-direct {v1, v3, v15, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_HOUR_OF_DAY_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 39
    new-instance v2, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x6b

    const-string v5, "TIME_HOUR_OF_DAY"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v2, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_HOUR_OF_DAY:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 44
    new-instance v3, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v2, v3

    const/4 v4, 0x2

    const/16 v5, 0x49

    const-string v6, "TIME_HOUR_12H_PADDED"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v3, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_HOUR_12H_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 46
    new-instance v4, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v3, v4

    const/4 v5, 0x3

    const/16 v6, 0x6c

    const-string v7, "TIME_HOUR_12H"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v4, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_HOUR_12H:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 50
    new-instance v5, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v4, v5

    const/4 v6, 0x4

    const/16 v7, 0x4d

    const-string v8, "TIME_MINUTE_OF_HOUR_PADDED"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v5, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_MINUTE_OF_HOUR_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 55
    new-instance v6, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v5, v6

    const/4 v7, 0x5

    const/16 v8, 0x53

    const-string v9, "TIME_SECONDS_OF_MINUTE_PADDED"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v6, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_SECONDS_OF_MINUTE_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 60
    new-instance v7, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v6, v7

    const/4 v8, 0x6

    const/16 v9, 0x4c

    const-string v10, "TIME_MILLIS_OF_SECOND_PADDED"

    invoke-direct {v7, v10, v8, v9}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v7, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_MILLIS_OF_SECOND_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 65
    new-instance v8, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v7, v8

    const/4 v9, 0x7

    const/16 v10, 0x4e

    const-string v11, "TIME_NANOS_OF_SECOND_PADDED"

    invoke-direct {v8, v11, v9, v10}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v8, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_NANOS_OF_SECOND_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 67
    new-instance v9, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v8, v9

    const/16 v10, 0x8

    const/16 v11, 0x70

    const-string v12, "TIME_AM_PM"

    invoke-direct {v9, v12, v10, v11}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v9, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_AM_PM:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 73
    new-instance v10, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v9, v10

    const/16 v11, 0x9

    const/16 v12, 0x7a

    const-string v13, "TIME_TZ_NUMERIC"

    invoke-direct {v10, v13, v11, v12}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v10, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_TZ_NUMERIC:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 79
    new-instance v11, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v10, v11

    const/16 v12, 0xa

    const/16 v13, 0x5a

    const-string v14, "TIME_TZ_SHORT"

    invoke-direct {v11, v14, v12, v13}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v11, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_TZ_SHORT:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 81
    new-instance v12, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v11, v12

    const/16 v13, 0xb

    const/16 v14, 0x73

    const-string v15, "TIME_EPOCH_SECONDS"

    invoke-direct {v12, v15, v13, v14}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v12, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_EPOCH_SECONDS:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 83
    new-instance v13, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v12, v13

    const/16 v14, 0xc

    const/16 v15, 0x51

    move-object/from16 v31, v0

    const-string v0, "TIME_EPOCH_MILLIS"

    invoke-direct {v13, v0, v14, v15}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v13, Lcom/google/common/flogger/parameter/DateTimeFormat;->TIME_EPOCH_MILLIS:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 88
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v13, v0

    const/16 v14, 0xd

    const/16 v15, 0x42

    move-object/from16 v32, v1

    const-string v1, "DATE_MONTH_FULL"

    invoke-direct {v0, v1, v14, v15}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_MONTH_FULL:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 90
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object v14, v0

    const/16 v1, 0xe

    const/16 v15, 0x62

    move-object/from16 v33, v2

    const-string v2, "DATE_MONTH_SHORT"

    invoke-direct {v0, v2, v1, v15}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_MONTH_SHORT:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 92
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    const/16 v34, 0x0

    move-object v15, v0

    const/16 v1, 0xf

    const/16 v2, 0x68

    move-object/from16 v35, v3

    const-string v3, "DATE_MONTH_SHORT_ALT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_MONTH_SHORT_ALT:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 94
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const/16 v2, 0x41

    const-string v3, "DATE_DAY_FULL"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_DAY_FULL:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 96
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const/16 v2, 0x61

    const-string v3, "DATE_DAY_SHORT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_DAY_SHORT:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 101
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const/16 v2, 0x43

    const-string v3, "DATE_CENTURY_PADDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_CENTURY_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 103
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const/16 v2, 0x59

    const-string v3, "DATE_YEAR_PADDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_YEAR_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 105
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const/16 v2, 0x79

    const-string v3, "DATE_YEAR_OF_CENTURY_PADDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_YEAR_OF_CENTURY_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 107
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const/16 v2, 0x6a

    const-string v3, "DATE_DAY_OF_YEAR_PADDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_DAY_OF_YEAR_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 109
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const/16 v2, 0x6d

    const-string v3, "DATE_MONTH_PADDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_MONTH_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 111
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const/16 v2, 0x64

    const-string v3, "DATE_DAY_OF_MONTH_PADDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_DAY_OF_MONTH_PADDED:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 113
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const/16 v2, 0x65

    const-string v3, "DATE_DAY_OF_MONTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATE_DAY_OF_MONTH:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 118
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const/16 v2, 0x52

    const-string v3, "DATETIME_HOURS_MINUTES"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATETIME_HOURS_MINUTES:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 120
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const/16 v2, 0x54

    const-string v3, "DATETIME_HOURS_MINUTES_SECONDS"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATETIME_HOURS_MINUTES_SECONDS:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 122
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const/16 v2, 0x72

    const-string v3, "DATETIME_HOURS_MINUTES_SECONDS_12H"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATETIME_HOURS_MINUTES_SECONDS_12H:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 124
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const/16 v2, 0x44

    const-string v3, "DATETIME_MONTH_DAY_YEAR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATETIME_MONTH_DAY_YEAR:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 126
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const/16 v2, 0x46

    const-string v3, "DATETIME_YEAR_MONTH_DAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATETIME_YEAR_MONTH_DAY:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 128
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const/16 v2, 0x63

    const-string v3, "DATETIME_FULL"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/parameter/DateTimeFormat;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->DATETIME_FULL:Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    filled-new-array/range {v0 .. v30}, [Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->$VALUES:[Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-static {}, Lcom/google/common/flogger/parameter/DateTimeFormat;->values()[Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-result-object v1

    array-length v2, v1

    move/from16 v15, v34

    :goto_0
    if-ge v15, v2, :cond_1

    aget-object v3, v1, v15

    .line 135
    iget-char v4, v3, Lcom/google/common/flogger/parameter/DateTimeFormat;->formatChar:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate format character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lcom/google/common/flogger/parameter/DateTimeFormat;->formatChar:C

    return-void
.end method

.method public static final of(C)Lcom/google/common/flogger/parameter/DateTimeFormat;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->MAP:Ljava/util/Map;

    .line 143
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/flogger/parameter/DateTimeFormat;
    .locals 1

    const-class v0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 30
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/parameter/DateTimeFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/common/flogger/parameter/DateTimeFormat;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/parameter/DateTimeFormat;->$VALUES:[Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 30
    invoke-virtual {v0}, [Lcom/google/common/flogger/parameter/DateTimeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/flogger/parameter/DateTimeFormat;

    return-object v0
.end method


# virtual methods
.method public getChar()C
    .locals 1

    iget-char v0, p0, Lcom/google/common/flogger/parameter/DateTimeFormat;->formatChar:C

    return v0
.end method
