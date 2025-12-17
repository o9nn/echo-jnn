.class public abstract Lcom/google/common/flogger/parser/MessageParser;
.super Ljava/lang/Object;
.source "MessageParser.java"


# static fields
.field public static final MAX_ARG_COUNT:I = 0xf4240


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract parseImpl(Lcom/google/common/flogger/parser/MessageBuilder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation
.end method

.method public abstract unescape(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
.end method
