.class public interface abstract Lnet/sf/sevenzipjbinding/ISeekableStream;
.super Ljava/lang/Object;
.source "ISeekableStream.java"


# static fields
.field public static final SEEK_CUR:I = 0x1

.field public static final SEEK_END:I = 0x2

.field public static final SEEK_SET:I


# virtual methods
.method public abstract seek(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation
.end method
