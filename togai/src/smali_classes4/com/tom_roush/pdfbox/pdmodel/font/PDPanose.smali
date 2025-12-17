.class public Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;
.super Ljava/lang/Object;
.source "PDPanose.java"


# static fields
.field public static final LENGTH:I = 0xc


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;->bytes:[B

    return-void
.end method


# virtual methods
.method public getFamilyClass()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;->bytes:[B

    const/4 v1, 0x0

    .line 50
    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;->bytes:[B

    const/4 v1, 0x2

    const/16 v2, 0xc

    .line 60
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 61
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;-><init>([B)V

    return-object v1
.end method
