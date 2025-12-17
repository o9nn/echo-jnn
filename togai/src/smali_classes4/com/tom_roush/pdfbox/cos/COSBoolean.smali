.class public final Lcom/tom_roush/pdfbox/cos/COSBoolean;
.super Lcom/tom_roush/pdfbox/cos/COSBase;
.source "COSBoolean.java"


# static fields
.field public static final FALSE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

.field public static final FALSE_BYTES:[B

.field public static final TRUE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

.field public static final TRUE_BYTES:[B


# instance fields
.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->TRUE_BYTES:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->FALSE_BYTES:[B

    .line 41
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSBoolean;-><init>(Z)V

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->TRUE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    .line 46
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSBoolean;-><init>(Z)V

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->FALSE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->value:Z

    return-void
.end method

.method public static getBoolean(Ljava/lang/Boolean;)Lcom/tom_roush/pdfbox/cos/COSBoolean;
    .locals 0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getBoolean(Z)Lcom/tom_roush/pdfbox/cos/COSBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Z)Lcom/tom_roush/pdfbox/cos/COSBoolean;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->TRUE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->FALSE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

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

    .line 114
    invoke-interface {p1, p0}, Lcom/tom_roush/pdfbox/cos/ICOSVisitor;->visitFromBoolean(Lcom/tom_roush/pdfbox/cos/COSBoolean;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->value:Z

    return v0
.end method

.method public getValueAsObject()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->value:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->value:Z

    .line 125
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writePDF(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->value:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->TRUE_BYTES:[B

    .line 139
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->FALSE_BYTES:[B

    .line 143
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method
