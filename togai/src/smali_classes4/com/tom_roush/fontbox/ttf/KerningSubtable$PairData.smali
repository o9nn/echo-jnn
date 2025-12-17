.class interface abstract Lcom/tom_roush/fontbox/ttf/KerningSubtable$PairData;
.super Ljava/lang/Object;
.source "KerningSubtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/KerningSubtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PairData"
.end annotation


# virtual methods
.method public abstract getKerning(II)I
.end method

.method public abstract read(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
