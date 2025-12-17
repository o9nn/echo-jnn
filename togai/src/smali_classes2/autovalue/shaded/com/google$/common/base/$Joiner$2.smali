.class Lautovalue/shaded/com/google$/common/base/$Joiner$2;
.super Lautovalue/shaded/com/google$/common/base/$Joiner;
.source "$Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/base/$Joiner;->skipNulls()Lautovalue/shaded/com/google$/common/base/$Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/base/$Joiner;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/base/$Joiner;Lautovalue/shaded/com/google$/common/base/$Joiner;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/base/$Joiner$2;->this$0:Lautovalue/shaded/com/google$/common/base/$Joiner;

    const/4 p1, 0x0

    .line 243
    invoke-direct {p0, p2, p1}, Lautovalue/shaded/com/google$/common/base/$Joiner;-><init>(Lautovalue/shaded/com/google$/common/base/$Joiner;Lautovalue/shaded/com/google$/common/base/$Joiner$1;)V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator<",
            "*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "appendable"

    .line 246
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "parts"

    .line 247
    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/base/$Joiner$2;->this$0:Lautovalue/shaded/com/google$/common/base/$Joiner;

    .line 251
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/base/$Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 255
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/base/$Joiner$2;->this$0:Lautovalue/shaded/com/google$/common/base/$Joiner;

    .line 258
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/base/$Joiner;->access$100(Lautovalue/shaded/com/google$/common/base/$Joiner;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/base/$Joiner$2;->this$0:Lautovalue/shaded/com/google$/common/base/$Joiner;

    .line 259
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/base/$Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public useForNull(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/base/$Joiner;
    .locals 1

    .line 267
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "already specified skipNulls"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/base/$Joiner$MapJoiner;
    .locals 1

    .line 272
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t use .skipNulls() with maps"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
