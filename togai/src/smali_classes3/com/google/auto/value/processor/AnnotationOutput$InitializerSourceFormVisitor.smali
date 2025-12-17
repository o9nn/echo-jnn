.class Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;
.super Lcom/google/auto/value/processor/AnnotationOutput$SourceFormVisitor;
.source "AnnotationOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/AnnotationOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializerSourceFormVisitor"
.end annotation


# instance fields
.field private final context:Ljavax/lang/model/element/Element;

.field private final memberName:Ljava/lang/String;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AnnotationOutput$SourceFormVisitor;-><init>(Lcom/google/auto/value/processor/AnnotationOutput$1;)V

    iput-object p1, p0, Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    iput-object p2, p0, Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;->memberName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;->context:Ljavax/lang/model/element/Element;

    return-void
.end method


# virtual methods
.method public bridge synthetic visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/StringBuilder;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/StringBuilder;)Ljava/lang/Void;
    .locals 3

    iget-object p1, p0, Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 145
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p1

    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@AutoAnnotation cannot yet supply a default value for annotation-valued member \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;->memberName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;->context:Ljavax/lang/model/element/Element;

    .line 146
    invoke-interface {p1, v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    const-string p1, "null"

    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method
