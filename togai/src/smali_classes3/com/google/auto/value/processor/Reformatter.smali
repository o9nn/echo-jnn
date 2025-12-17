.class Lcom/google/auto/value/processor/Reformatter;
.super Ljava/lang/Object;
.source "Reformatter.java"


# static fields
.field private static final OPERATORS:Lautovalue/shaded/com/google$/common/base/$CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "+-*%&|^<>=?:."

    .line 33
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->precomputed()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/Reformatter;->OPERATORS:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fixup(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    new-instance v1, Lcom/google/auto/value/processor/JavaScanner;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/google/auto/value/processor/JavaScanner;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/google/auto/value/processor/JavaScanner;->string()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v5, v3, :cond_c

    .line 43
    invoke-virtual {v1, v5}, Lcom/google/auto/value/processor/JavaScanner;->tokenEnd(I)I

    move-result v9

    .line 46
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x29

    const/16 v12, 0x7d

    const/16 v13, 0x28

    const/16 v14, 0x20

    const/16 v15, 0xa

    if-eq v10, v15, :cond_5

    if-eq v10, v14, :cond_4

    const/16 v8, 0x7b

    if-eq v10, v8, :cond_3

    if-eq v10, v12, :cond_2

    if-eq v10, v13, :cond_1

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 107
    :goto_1
    invoke-virtual {v0, v2, v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_4
    if-lez v5, :cond_b

    .line 65
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v13, :cond_b

    const-string v8, "\n.,;)"

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_b

    .line 66
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    if-ge v9, v3, :cond_a

    .line 78
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v15, :cond_a

    .line 82
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 83
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_b

    if-ne v8, v13, :cond_6

    if-eq v10, v11, :cond_b

    .line 85
    :cond_6
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v8, v7, 0x2

    if-gtz v6, :cond_8

    sget-object v11, Lcom/google/auto/value/processor/Reformatter;->OPERATORS:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    .line 89
    invoke-virtual {v11, v10}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->matches(C)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    :cond_7
    if-ne v10, v12, :cond_9

    add-int/lit8 v8, v8, -0x2

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 v8, v8, 0x4

    :cond_9
    :goto_3
    move v10, v4

    :goto_4
    if-ge v10, v8, :cond_b

    .line 95
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    if-nez v6, :cond_b

    const/4 v10, 0x2

    if-ge v7, v10, :cond_b

    .line 100
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v15, :cond_b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 101
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    :goto_5
    move v8, v5

    move v5, v9

    goto/16 :goto_0

    .line 109
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
