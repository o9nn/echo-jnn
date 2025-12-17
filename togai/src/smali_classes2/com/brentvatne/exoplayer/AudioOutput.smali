.class public final enum Lcom/brentvatne/exoplayer/AudioOutput;
.super Ljava/lang/Enum;
.source "AudioOutput.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brentvatne/exoplayer/AudioOutput;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brentvatne/exoplayer/AudioOutput;

.field public static final enum EARPIECE:Lcom/brentvatne/exoplayer/AudioOutput;

.field public static final enum SPEAKER:Lcom/brentvatne/exoplayer/AudioOutput;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final streamType:I


# direct methods
.method private static synthetic $values()[Lcom/brentvatne/exoplayer/AudioOutput;
    .locals 2

    sget-object v0, Lcom/brentvatne/exoplayer/AudioOutput;->SPEAKER:Lcom/brentvatne/exoplayer/AudioOutput;

    sget-object v1, Lcom/brentvatne/exoplayer/AudioOutput;->EARPIECE:Lcom/brentvatne/exoplayer/AudioOutput;

    filled-new-array {v0, v1}, [Lcom/brentvatne/exoplayer/AudioOutput;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/brentvatne/exoplayer/AudioOutput;

    const-string v1, "speaker"

    const/4 v2, 0x3

    const-string v3, "SPEAKER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/brentvatne/exoplayer/AudioOutput;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/brentvatne/exoplayer/AudioOutput;->SPEAKER:Lcom/brentvatne/exoplayer/AudioOutput;

    .line 11
    new-instance v0, Lcom/brentvatne/exoplayer/AudioOutput;

    const/4 v1, 0x1

    const-string v2, "earpiece"

    const-string v3, "EARPIECE"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/brentvatne/exoplayer/AudioOutput;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/brentvatne/exoplayer/AudioOutput;->EARPIECE:Lcom/brentvatne/exoplayer/AudioOutput;

    .line 8
    invoke-static {}, Lcom/brentvatne/exoplayer/AudioOutput;->$values()[Lcom/brentvatne/exoplayer/AudioOutput;

    move-result-object v0

    sput-object v0, Lcom/brentvatne/exoplayer/AudioOutput;->$VALUES:[Lcom/brentvatne/exoplayer/AudioOutput;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/brentvatne/exoplayer/AudioOutput;->mName:Ljava/lang/String;

    iput p4, p0, Lcom/brentvatne/exoplayer/AudioOutput;->streamType:I

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/brentvatne/exoplayer/AudioOutput;
    .locals 5

    .line 22
    invoke-static {}, Lcom/brentvatne/exoplayer/AudioOutput;->values()[Lcom/brentvatne/exoplayer/AudioOutput;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 23
    iget-object v4, v3, Lcom/brentvatne/exoplayer/AudioOutput;->mName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/brentvatne/exoplayer/AudioOutput;->SPEAKER:Lcom/brentvatne/exoplayer/AudioOutput;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brentvatne/exoplayer/AudioOutput;
    .locals 1

    const-class v0, Lcom/brentvatne/exoplayer/AudioOutput;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brentvatne/exoplayer/AudioOutput;

    return-object p0
.end method

.method public static values()[Lcom/brentvatne/exoplayer/AudioOutput;
    .locals 1

    sget-object v0, Lcom/brentvatne/exoplayer/AudioOutput;->$VALUES:[Lcom/brentvatne/exoplayer/AudioOutput;

    .line 8
    invoke-virtual {v0}, [Lcom/brentvatne/exoplayer/AudioOutput;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brentvatne/exoplayer/AudioOutput;

    return-object v0
.end method


# virtual methods
.method public getStreamType()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/exoplayer/AudioOutput;->streamType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/AudioOutput;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brentvatne/exoplayer/AudioOutput;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
