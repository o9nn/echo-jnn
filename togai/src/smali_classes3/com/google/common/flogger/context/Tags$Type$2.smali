.class final enum Lcom/google/common/flogger/context/Tags$Type$2;
.super Lcom/google/common/flogger/context/Tags$Type;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/flogger/context/Tags$Type;-><init>(Ljava/lang/String;ILcom/google/common/flogger/context/Tags$1;)V

    return-void
.end method


# virtual methods
.method compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 80
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
