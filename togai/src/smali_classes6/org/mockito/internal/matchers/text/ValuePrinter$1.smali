.class Lorg/mockito/internal/matchers/text/ValuePrinter$1;
.super Ljava/lang/Object;
.source "ValuePrinter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/matchers/text/ValuePrinter;->print(Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private currentIndex:I

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/matchers/text/ValuePrinter$1;->val$value:Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mockito/internal/matchers/text/ValuePrinter$1;->currentIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/mockito/internal/matchers/text/ValuePrinter$1;->currentIndex:I

    iget-object v1, p0, Lorg/mockito/internal/matchers/text/ValuePrinter$1;->val$value:Ljava/lang/Object;

    .line 58
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/matchers/text/ValuePrinter$1;->val$value:Ljava/lang/Object;

    iget v1, p0, Lorg/mockito/internal/matchers/text/ValuePrinter$1;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mockito/internal/matchers/text/ValuePrinter$1;->currentIndex:I

    .line 62
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot remove items from an array"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
