.class final Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;
.super Ljava/lang/Object;
.source "ToPrettyStringValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorReporter"
.end annotation


# instance fields
.field private final messager:Ljavax/annotation/processing/Messager;

.field private final method:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method constructor <init>(Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/Messager;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;->method:Ljavax/lang/model/element/ExecutableElement;

    iput-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;->messager:Ljavax/annotation/processing/Messager;

    return-void
.end method


# virtual methods
.method reportError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;->messager:Ljavax/annotation/processing/Messager;

    .line 139
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    iget-object v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0, v1, p1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method
