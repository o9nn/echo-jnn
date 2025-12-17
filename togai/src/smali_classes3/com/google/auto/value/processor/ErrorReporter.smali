.class Lcom/google/auto/value/processor/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# instance fields
.field private errorCount:I

.field private final messager:Ljavax/annotation/processing/Messager;


# direct methods
.method constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/ErrorReporter;->messager:Ljavax/annotation/processing/Messager;

    return-void
.end method


# virtual methods
.method abortIfAnyError()V
    .locals 1

    iget v0, p0, Lcom/google/auto/value/processor/ErrorReporter;->errorCount:I

    if-gtz v0, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/google/auto/value/processor/AbortProcessingException;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AbortProcessingException;-><init>()V

    throw v0
.end method

.method varargs abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance p1, Lcom/google/auto/value/processor/AbortProcessingException;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AbortProcessingException;-><init>()V

    throw p1
.end method

.method errorCount()I
    .locals 1

    iget v0, p0, Lcom/google/auto/value/processor/ErrorReporter;->errorCount:I

    return v0
.end method

.method varargs reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/ErrorReporter;->messager:Ljavax/annotation/processing/Messager;

    .line 73
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    iget p1, p0, Lcom/google/auto/value/processor/ErrorReporter;->errorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/auto/value/processor/ErrorReporter;->errorCount:I

    return-void
.end method

.method varargs reportNote(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/ErrorReporter;->messager:Ljavax/annotation/processing/Messager;

    .line 46
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method varargs reportWarning(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/ErrorReporter;->messager:Ljavax/annotation/processing/Messager;

    .line 58
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method
