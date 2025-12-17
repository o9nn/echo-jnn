.class public final Lcom/tom_roush/pdfbox/contentstream/operator/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# static fields
.field private static final operators:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/contentstream/operator/Operator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imageData:[B

.field private imageParameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final theOperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->operators:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->theOperator:Ljava/lang/String;

    const-string v0, "/"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Operators are not allowed to start with / \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/contentstream/operator/Operator;
    .locals 2

    const-string v0, "ID"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BI"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->operators:Ljava/util/concurrent/ConcurrentMap;

    .line 71
    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-nez v1, :cond_2

    .line 76
    new-instance v1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    invoke-direct {v1, p0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-nez v1, :cond_2

    .line 79
    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    new-instance v1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    invoke-direct {v1, p0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public getImageData()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->imageData:[B

    return-object v0
.end method

.method public getImageParameters()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->imageParameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->theOperator:Ljava/lang/String;

    return-object v0
.end method

.method public setImageData([B)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->imageData:[B

    return-void
.end method

.method public setImageParameters(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->imageParameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PDFOperator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->theOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
