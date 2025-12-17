.class public interface abstract Lnet/sf/sevenzipjbinding/IOutItemBase;
.super Ljava/lang/Object;
.source "IOutItemBase.java"


# virtual methods
.method public abstract getArchiveFormat()Lnet/sf/sevenzipjbinding/ArchiveFormat;
.end method

.method public abstract getDataSize()Ljava/lang/Long;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getOutArchive()Lnet/sf/sevenzipjbinding/IOutArchive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/sevenzipjbinding/IOutArchive<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getUpdateIsNewData()Ljava/lang/Boolean;
.end method

.method public abstract getUpdateIsNewProperties()Ljava/lang/Boolean;
.end method

.method public abstract getUpdateOldArchiveItemIndex()Ljava/lang/Integer;
.end method

.method public abstract setDataSize(Ljava/lang/Long;)V
.end method

.method public abstract setUpdateIsNewData(Ljava/lang/Boolean;)V
.end method

.method public abstract setUpdateIsNewProperties(Ljava/lang/Boolean;)V
.end method

.method public abstract setUpdateOldArchiveItemIndex(Ljava/lang/Integer;)V
.end method
