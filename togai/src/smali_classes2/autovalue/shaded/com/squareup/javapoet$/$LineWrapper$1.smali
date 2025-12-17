.class synthetic Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$1;
.super Ljava/lang/Object;
.source "$LineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$squareup$javapoet$LineWrapper$FlushType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->values()[Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$1;->$SwitchMap$com$squareup$javapoet$LineWrapper$FlushType:[I

    :try_start_0
    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->WRAP:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    invoke-virtual {v1}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$1;->$SwitchMap$com$squareup$javapoet$LineWrapper$FlushType:[I

    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->SPACE:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    invoke-virtual {v1}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$1;->$SwitchMap$com$squareup$javapoet$LineWrapper$FlushType:[I

    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->EMPTY:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    invoke-virtual {v1}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
