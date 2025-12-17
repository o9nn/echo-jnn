.class final Lcom/google/common/flogger/context/Tags$KeyValuePair;
.super Ljava/lang/Object;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyValuePair"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/flogger/context/Tags$KeyValuePair;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/common/flogger/context/Tags$KeyValuePair;->value:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/google/common/flogger/context/Tags$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$KeyValuePair;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$KeyValuePair;->value:Ljava/lang/Object;

    return-object p0
.end method
