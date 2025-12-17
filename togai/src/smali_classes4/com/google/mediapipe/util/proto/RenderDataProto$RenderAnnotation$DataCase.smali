.class public final enum Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
.super Ljava/lang/Enum;
.source "RenderDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum ARROW:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum DATA_NOT_SET:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum FILLED_OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum FILLED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum FILLED_ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum GRADIENT_LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum POINT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum SCRIBBLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum TEXT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8875
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8876
    new-instance v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v4, "FILLED_RECTANGLE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8877
    new-instance v3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v4, "OVAL"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8878
    new-instance v4, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v5, "FILLED_OVAL"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8879
    new-instance v5, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v6, "POINT"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->POINT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8880
    new-instance v6, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v7, "LINE"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8881
    new-instance v7, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v8, "ARROW"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->ARROW:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8882
    new-instance v8, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v9, "TEXT"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->TEXT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8883
    new-instance v9, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v10, "ROUNDED_RECTANGLE"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v11, v12}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8884
    new-instance v10, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v11, "FILLED_ROUNDED_RECTANGLE"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v12, v13}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8885
    new-instance v11, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v12, "GRADIENT_LINE"

    const/16 v14, 0xe

    invoke-direct {v11, v12, v13, v14}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->GRADIENT_LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8886
    new-instance v12, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const/16 v13, 0xb

    const/16 v14, 0xf

    const-string v15, "SCRIBBLE"

    invoke-direct {v12, v15, v13, v14}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->SCRIBBLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8887
    new-instance v13, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v14, "DATA_NOT_SET"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->DATA_NOT_SET:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    filled-new-array/range {v0 .. v12}, [Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->$VALUES:[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

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

    .line 8889
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->TEXT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->ARROW:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->POINT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->DATA_NOT_SET:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->SCRIBBLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->GRADIENT_LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
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

    .line 8897
    invoke-static {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->forNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8874
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->$VALUES:[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8874
    invoke-virtual {v0}, [Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->value:I

    return v0
.end method
