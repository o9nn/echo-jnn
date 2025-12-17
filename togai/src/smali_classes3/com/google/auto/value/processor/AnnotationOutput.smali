.class final Lcom/google/auto/value/processor/AnnotationOutput;
.super Ljava/lang/Object;
.source "AnnotationOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;,
        Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;,
        Lcom/google/auto/value/processor/AnnotationOutput$SourceFormVisitor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/google/auto/value/processor/AnnotationOutput;->appendQuoted(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/google/auto/value/processor/AnnotationOutput;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static appendEscaped(Ljava/lang/StringBuilder;C)V
    .locals 2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    const/16 v0, 0x22

    const/16 v1, 0x5c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x27

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_3

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\\%03o"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v0, 0x7f

    if-lt p1, v0, :cond_2

    .line 263
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\\u%04x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p1, "\\r"

    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string p1, "\\n"

    .line 252
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string p1, "\\t"

    .line 258
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private static appendQuoted(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x27

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {p0, p1}, Lcom/google/auto/value/processor/AnnotationOutput;->appendEscaped(Ljava/lang/StringBuilder;C)V

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    const/16 v0, 0x22

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 232
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Lcom/google/auto/value/processor/AnnotationOutput;->appendEscaped(Ljava/lang/StringBuilder;C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method static sourceFormForAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    new-instance v1, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;-><init>(Lcom/google/auto/value/processor/AnnotationOutput$1;)V

    invoke-virtual {v1, p0, v0}, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/StringBuilder;)Ljava/lang/Void;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static sourceFormForInitializer(Ljavax/lang/model/element/AnnotationValue;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 1

    .line 213
    new-instance v0, Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/auto/value/processor/AnnotationOutput$InitializerSourceFormVisitor;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {v0, p0, p1}, Lcom/google/auto/value/processor/AnnotationOutput$SourceFormVisitor;->visit(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
