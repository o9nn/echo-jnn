.class public final synthetic Lcom/rararchive/RarArchiveModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lnet/sf/sevenzipjbinding/ISequentialOutStream;


# instance fields
.field public final synthetic f$0:Ljava/io/FileOutputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/FileOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rararchive/RarArchiveModule$$ExternalSyntheticLambda0;->f$0:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public final write([B)I
    .locals 1

    iget-object v0, p0, Lcom/rararchive/RarArchiveModule$$ExternalSyntheticLambda0;->f$0:Ljava/io/FileOutputStream;

    invoke-static {v0, p1}, Lcom/rararchive/RarArchiveModule;->$r8$lambda$a-X96AJJfblPdrMjPYIHn8XNzu4(Ljava/io/FileOutputStream;[B)I

    move-result p1

    return p1
.end method
