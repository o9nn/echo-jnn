.class synthetic Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$1;
.super Ljava/lang/Object;
.source "ExtensionClassTypeSpecBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$auto$common$Visibility:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 176
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->values()[Lautovalue/shaded/com/google$/auto/common/$Visibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$1;->$SwitchMap$com$google$auto$common$Visibility:[I

    :try_start_0
    sget-object v1, Lautovalue/shaded/com/google$/auto/common/$Visibility;->PUBLIC:Lautovalue/shaded/com/google$/auto/common/$Visibility;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$1;->$SwitchMap$com$google$auto$common$Visibility:[I

    sget-object v1, Lautovalue/shaded/com/google$/auto/common/$Visibility;->PROTECTED:Lautovalue/shaded/com/google$/auto/common/$Visibility;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$1;->$SwitchMap$com$google$auto$common$Visibility:[I

    sget-object v1, Lautovalue/shaded/com/google$/auto/common/$Visibility;->DEFAULT:Lautovalue/shaded/com/google$/auto/common/$Visibility;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
