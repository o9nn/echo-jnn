.class final Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;
.super Lautovalue/shaded/com/google$/common/base/$Converter;
.source "$Converter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/base/$Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/base/$Converter<",
        "TB;TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final original:Lautovalue/shaded/com/google$/common/base/$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Converter<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/base/$Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Converter<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$Converter;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;->original:Lautovalue/shaded/com/google$/common/base/$Converter;

    return-void
.end method


# virtual methods
.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;->original:Lautovalue/shaded/com/google$/common/base/$Converter;

    .line 275
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;->original:Lautovalue/shaded/com/google$/common/base/$Converter;

    .line 269
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Converter;->correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 263
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .line 258
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 285
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;

    if-eqz v0, :cond_0

    .line 286
    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;->original:Lautovalue/shaded/com/google$/common/base/$Converter;

    .line 287
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;->original:Lautovalue/shaded/com/google$/common/base/$Converter;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Converter;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;->original:Lautovalue/shaded/com/google$/common/base/$Converter;

    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public reverse()Lautovalue/shaded/com/google$/common/base/$Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/base/$Converter<",
            "TA;TB;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;->original:Lautovalue/shaded/com/google$/common/base/$Converter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Converter$ReverseConverter;->original:Lautovalue/shaded/com/google$/common/base/$Converter;

    .line 299
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
