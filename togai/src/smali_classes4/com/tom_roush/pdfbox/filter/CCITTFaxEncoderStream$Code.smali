.class Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;
.super Ljava/lang/Object;
.source "CCITTFaxEncoderStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Code"
.end annotation


# instance fields
.field final code:I

.field final length:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;->code:I

    iput p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;->length:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;-><init>(II)V

    return-void
.end method
