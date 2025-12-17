.class Lcom/tom_roush/fontbox/type1/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/type1/Token$Kind;
    }
.end annotation


# static fields
.field static final CHARSTRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final END_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final END_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final REAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final START_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final START_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field static final STRING:Lcom/tom_roush/fontbox/type1/Token$Kind;


# instance fields
.field private data:[B

.field private final kind:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->STRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->STRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 44
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 45
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 46
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->REAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->REAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 47
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 48
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->START_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->START_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 49
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->END_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->END_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 50
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 51
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 52
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->CHARSTRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->CHARSTRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 53
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->START_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->START_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 54
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->END_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token;->END_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    return-void
.end method

.method constructor <init>(CLcom/tom_roush/fontbox/type1/Token$Kind;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/type1/Token;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/tom_roush/fontbox/type1/Token;->kind:Lcom/tom_roush/fontbox/type1/Token$Kind;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/tom_roush/fontbox/type1/Token$Kind;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/type1/Token;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/tom_roush/fontbox/type1/Token;->kind:Lcom/tom_roush/fontbox/type1/Token$Kind;

    return-void
.end method

.method constructor <init>([BLcom/tom_roush/fontbox/type1/Token$Kind;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/type1/Token;->data:[B

    iput-object p2, p0, Lcom/tom_roush/fontbox/type1/Token;->kind:Lcom/tom_roush/fontbox/type1/Token$Kind;

    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Token;->text:Ljava/lang/String;

    const-string v1, "true"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public floatValue()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Token;->text:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Token;->data:[B

    return-object v0
.end method

.method public getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Token;->kind:Lcom/tom_roush/fontbox/type1/Token$Kind;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Token;->text:Ljava/lang/String;

    return-object v0
.end method

.method public intValue()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Token;->text:Ljava/lang/String;

    .line 107
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Token;->kind:Lcom/tom_roush/fontbox/type1/Token$Kind;

    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->CHARSTRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Token[kind=CHARSTRING, data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Token;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Token[kind="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Token;->kind:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Token;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
