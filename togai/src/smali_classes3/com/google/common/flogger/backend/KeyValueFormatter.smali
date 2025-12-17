.class public final Lcom/google/common/flogger/backend/KeyValueFormatter;
.super Ljava/lang/Object;
.source "KeyValueFormatter.java"

# interfaces
.implements Lcom/google/common/flogger/MetadataKey$KeyValueHandler;


# static fields
.field private static final FUNDAMENTAL_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final NEWLINE_LIMIT:I = 0x3e8


# instance fields
.field private haveSeenValues:Z

.field private final out:Ljava/lang/StringBuilder;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/common/flogger/backend/KeyValueFormatter;->FUNDAMENTAL_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->haveSeenValues:Z

    iput-object p1, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->suffix:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-static {p1, v0}, Lcom/google/common/flogger/backend/KeyValueFormatter;->nextEscapableChar(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 138
    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_3

    const v1, 0xfffd

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x72

    goto :goto_1

    :cond_1
    const/16 v1, 0x6e

    goto :goto_1

    :cond_2
    const/16 v1, 0x74

    :cond_3
    :goto_1
    const-string v2, "\\"

    .line 165
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static appendJsonFormattedKeyAndValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 79
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    .line 83
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->FUNDAMENTAL_TYPES:Ljava/util/Set;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x22

    .line 87
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/common/flogger/backend/KeyValueFormatter;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private static nextEscapableChar(Ljava/lang/String;I)I
    .locals 2

    .line 171
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public done()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->haveSeenValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->suffix:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public handle(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->haveSeenValues:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :cond_1
    const/16 v1, 0xa

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->prefix:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->haveSeenValues:Z

    :goto_0
    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    .line 124
    invoke-static {p1, p2, v0}, Lcom/google/common/flogger/backend/KeyValueFormatter;->appendJsonFormattedKeyAndValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method
