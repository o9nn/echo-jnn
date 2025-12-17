.class Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;
.super Ljava/lang/Object;
.source "FieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyValue"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;->value:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
