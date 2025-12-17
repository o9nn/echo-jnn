.class final Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;
.super Ljava/lang/Object;
.source "$LineWrapper.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecordingAppendable"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Appendable;

.field lastChar:C


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-char v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->lastChar:C

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->delegate:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-char p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->lastChar:C

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->delegate:Ljava/lang/Appendable;

    .line 168
    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 156
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->lastChar:C

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->delegate:Ljava/lang/Appendable;

    .line 158
    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$RecordingAppendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method
