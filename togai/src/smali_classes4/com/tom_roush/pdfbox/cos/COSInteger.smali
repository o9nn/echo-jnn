.class public final Lcom/tom_roush/pdfbox/cos/COSInteger;
.super Lcom/tom_roush/pdfbox/cos/COSNumber;
.source "COSInteger.java"


# static fields
.field private static final HIGH:I = 0x100

.field private static final LOW:I = -0x64

.field public static final ONE:Lcom/tom_roush/pdfbox/cos/COSInteger;

.field protected static final OUT_OF_RANGE_MAX:Lcom/tom_roush/pdfbox/cos/COSInteger;

.field protected static final OUT_OF_RANGE_MIN:Lcom/tom_roush/pdfbox/cos/COSInteger;

.field private static final STATIC:[Lcom/tom_roush/pdfbox/cos/COSInteger;

.field public static final THREE:Lcom/tom_roush/pdfbox/cos/COSInteger;

.field public static final TWO:Lcom/tom_roush/pdfbox/cos/COSInteger;

.field public static final ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;


# instance fields
.field private final isValid:Z

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x165

    new-array v0, v0, [Lcom/tom_roush/pdfbox/cos/COSInteger;

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->STATIC:[Lcom/tom_roush/pdfbox/cos/COSInteger;

    const-wide/16 v0, 0x0

    .line 50
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    const-wide/16 v0, 0x1

    .line 56
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->ONE:Lcom/tom_roush/pdfbox/cos/COSInteger;

    const-wide/16 v0, 0x2

    .line 62
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->TWO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    const-wide/16 v0, 0x3

    .line 68
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->THREE:Lcom/tom_roush/pdfbox/cos/COSInteger;

    const/4 v0, 0x1

    .line 73
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSInteger;->getInvalid(Z)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->OUT_OF_RANGE_MAX:Lcom/tom_roush/pdfbox/cos/COSInteger;

    const/4 v0, 0x0

    .line 78
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSInteger;->getInvalid(Z)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->OUT_OF_RANGE_MIN:Lcom/tom_roush/pdfbox/cos/COSInteger;

    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSNumber;-><init>()V

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->value:J

    iput-boolean p3, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->isValid:Z

    return-void
.end method

.method public static get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;
    .locals 4

    const-wide/16 v0, -0x64

    cmp-long v0, v0, p0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    const-wide/16 v2, 0x100

    cmp-long v0, p0, v2

    if-gtz v0, :cond_1

    long-to-int v0, p0

    add-int/lit8 v0, v0, 0x64

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSInteger;->STATIC:[Lcom/tom_roush/pdfbox/cos/COSInteger;

    .line 92
    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 94
    new-instance v3, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-direct {v3, p0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;-><init>(JZ)V

    aput-object v3, v2, v0

    .line 96
    :cond_0
    aget-object p0, v2, v0

    return-object p0

    .line 98
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-direct {v0, p0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;-><init>(JZ)V

    return-object v0
.end method

.method private static getInvalid(Z)Lcom/tom_roush/pdfbox/cos/COSInteger;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 103
    new-instance p0, Lcom/tom_roush/pdfbox/cos/COSInteger;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSInteger;-><init>(JZ)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance p0, Lcom/tom_roush/pdfbox/cos/COSInteger;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {p0, v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSInteger;-><init>(JZ)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-interface {p1, p0}, Lcom/tom_roush/pdfbox/cos/ICOSVisitor;->visitFromInt(Lcom/tom_roush/pdfbox/cos/COSInteger;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 127
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSInteger;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public floatValue()F
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->value:J

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->isValid:Z

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->value:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COSInt{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writePDF(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->value:J

    .line 228
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
