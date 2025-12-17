.class final Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;
.super Ljava/lang/Object;
.source "$LineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;,
        Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;
    }
.end annotation


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private closed:Z

.field private column:I

.field private final columnLimit:I

.field private final indent:Ljava/lang/String;

.field private indentLevel:I

.field private nextFlush:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

.field private final out:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;I)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->buffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    const/4 v1, -0x1

    iput v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->indentLevel:I

    const-string v1, "out == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    invoke-static {p1, v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->out:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;

    iput-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->indent:Ljava/lang/String;

    iput p3, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->columnLimit:I

    return-void
.end method

.method private flush(Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$1;->$SwitchMap$com$squareup$javapoet$LineWrapper$FlushType:[I

    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown FlushType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->out:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;

    const/16 v0, 0x20

    .line 125
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->out:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;

    const/16 v0, 0xa

    .line 117
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->append(C)Ljava/lang/Appendable;

    move p1, v1

    :goto_0
    iget v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->indentLevel:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->out:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->indent:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->indent:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/2addr v0, p1

    iput v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    iget-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->buffer:Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    :goto_1
    iget-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->out:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->buffer:Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->buffer:Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    iput p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->indentLevel:I

    const/4 p1, 0x0

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->nextFlush:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    return-void
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->closed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->nextFlush:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    const/16 v1, 0xa

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->columnLimit:I

    if-gt v3, v4, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->buffer:Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    return-void

    :cond_0
    if-eq v0, v2, :cond_2

    iget v3, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    add-int/2addr v3, v0

    iget v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->columnLimit:I

    if-le v3, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->nextFlush:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    goto :goto_1

    .line 77
    :cond_2
    :goto_0
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->WRAP:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    :goto_1
    invoke-direct {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->flush(Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;)V

    :cond_3
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->out:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;

    .line 80
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    :goto_2
    iput p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    return-void

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->nextFlush:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->flush(Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->closed:Z

    return-void
.end method

.method lastChar()C
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->out:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;

    .line 57
    iget-char v0, v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->lastChar:C

    return v0
.end method

.method wrappingSpace(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->nextFlush:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->flush(Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;)V

    :cond_0
    iget v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    .line 93
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->SPACE:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->nextFlush:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    iput p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->indentLevel:I

    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method zeroWidthSpace(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->closed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->column:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->nextFlush:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    if-eqz v0, :cond_1

    .line 102
    invoke-direct {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->flush(Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;)V

    .line 103
    :cond_1
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->EMPTY:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->nextFlush:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    iput p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;->indentLevel:I

    return-void

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
