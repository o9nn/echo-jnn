.class Lcom/google/common/flogger/context/Tags$1;
.super Ljava/lang/Object;
.source "Tags.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 120
    invoke-static {p1}, Lcom/google/common/flogger/context/Tags$Type;->access$100(Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Type;

    move-result-object v0

    .line 121
    invoke-static {p2}, Lcom/google/common/flogger/context/Tags$Type;->access$100(Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Type;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/google/common/flogger/context/Tags$Type;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/common/flogger/context/Tags$Type;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    :goto_0
    return p1
.end method
