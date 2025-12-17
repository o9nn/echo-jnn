.class final Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;
.super Ljava/lang/Object;
.source "$CodeBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodeBlockJoiner"
.end annotation


# instance fields
.field private final builder:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

.field private final delimiter:Ljava/lang/String;

.field private first:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;)V
    .locals 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->first:Z

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->delimiter:Ljava/lang/String;

    iput-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->builder:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-void
.end method


# virtual methods
.method add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;
    .locals 4

    iget-boolean v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->first:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->builder:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    iget-object v2, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->delimiter:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    .line 450
    invoke-virtual {v0, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    :cond_0
    iput-boolean v1, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->first:Z

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->builder:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 454
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method join()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->builder:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 467
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    return-object v0
.end method

.method merge(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;
    .locals 1

    .line 459
    iget-object p1, p1, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->builder:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;->add(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$CodeBlockJoiner;

    :cond_0
    return-object p0
.end method
