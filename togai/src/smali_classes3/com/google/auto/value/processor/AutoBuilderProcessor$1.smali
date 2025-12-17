.class synthetic Lcom/google/auto/value/processor/AutoBuilderProcessor$1;
.super Ljava/lang/Object;
.source "AutoBuilderProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/AutoBuilderProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$auto$common$Visibility:[I

.field static final synthetic $SwitchMap$javax$lang$model$element$ElementKind:[I

.field static final synthetic $SwitchMap$javax$lang$model$type$TypeKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 393
    invoke-static {}, Ljavax/lang/model/type/TypeKind;->values()[Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :catch_1
    invoke-static {}, Ljavax/lang/model/element/ElementKind;->values()[Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    :try_start_2
    sget-object v3, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v3, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    :catch_3
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->values()[Lautovalue/shaded/com/google$/auto/common/$Visibility;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$com$google$auto$common$Visibility:[I

    :try_start_4
    sget-object v3, Lautovalue/shaded/com/google$/auto/common/$Visibility;->PUBLIC:Lautovalue/shaded/com/google$/auto/common/$Visibility;

    invoke-virtual {v3}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$com$google$auto$common$Visibility:[I

    sget-object v2, Lautovalue/shaded/com/google$/auto/common/$Visibility;->PROTECTED:Lautovalue/shaded/com/google$/auto/common/$Visibility;

    invoke-virtual {v2}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$com$google$auto$common$Visibility:[I

    sget-object v1, Lautovalue/shaded/com/google$/auto/common/$Visibility;->DEFAULT:Lautovalue/shaded/com/google$/auto/common/$Visibility;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
