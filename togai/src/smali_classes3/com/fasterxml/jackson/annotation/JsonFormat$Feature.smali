.class public final enum Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
.super Ljava/lang/Enum;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum ADJUST_DATES_TO_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

.field public static final enum WRITE_SORTED_MAP_ENTRIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 251
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const-string v1, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 262
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const-string v2, "ACCEPT_CASE_INSENSITIVE_PROPERTIES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 272
    new-instance v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const-string v3, "ACCEPT_CASE_INSENSITIVE_VALUES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 278
    new-instance v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const-string v4, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 284
    new-instance v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const-string v5, "WRITE_DATES_WITH_ZONE_ID"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 291
    new-instance v5, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const-string v6, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 298
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const-string v7, "WRITE_SORTED_MAP_ENTRIES"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_SORTED_MAP_ENTRIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 313
    new-instance v7, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const-string v8, "ADJUST_DATES_TO_CONTEXT_TIME_ZONE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ADJUST_DATES_TO_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    filled-new-array/range {v0 .. v7}, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 245
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 245
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    return-object v0
.end method
