.class public abstract Lcom/tom_roush/fontbox/ttf/GlyfDescript;
.super Ljava/lang/Object;
.source "GlyfDescript.java"

# interfaces
.implements Lcom/tom_roush/fontbox/ttf/GlyphDescription;


# static fields
.field public static final ON_CURVE:B = 0x1t

.field public static final REPEAT:B = 0x8t

.field public static final X_DUAL:B = 0x10t

.field public static final X_SHORT_VECTOR:B = 0x2t

.field public static final Y_DUAL:B = 0x20t

.field public static final Y_SHORT_VECTOR:B = 0x4t


# instance fields
.field private final contourCount:I

.field private instructions:[I


# direct methods
.method constructor <init>(SLcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/GlyfDescript;->contourCount:I

    return-void
.end method


# virtual methods
.method public getContourCount()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfDescript;->contourCount:I

    return v0
.end method

.method public getInstructions()[I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfDescript;->instructions:[I

    return-object v0
.end method

.method readInstructions(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedByteArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyfDescript;->instructions:[I

    return-void
.end method

.method public resolve()V
    .locals 0

    return-void
.end method
