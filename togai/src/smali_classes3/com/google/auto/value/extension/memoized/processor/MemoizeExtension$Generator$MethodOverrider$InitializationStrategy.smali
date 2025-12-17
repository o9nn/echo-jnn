.class abstract Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;
.super Ljava/lang/Object;
.source "MemoizeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "InitializationStrategy"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;


# direct methods
.method private constructor <init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;->this$1:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$1;)V
    .locals 0

    .line 527
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;-><init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;)V

    return-void
.end method


# virtual methods
.method abstract additionalFields()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;",
            ">;"
        }
    .end annotation
.end method

.method abstract checkMemoized()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
.end method

.method abstract setMemoized()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
.end method
