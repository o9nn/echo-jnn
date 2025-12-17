.class public Lnet/sf/sevenzipjbinding/PropID$AttributesBitMask;
.super Ljava/lang/Object;
.source "PropID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/sevenzipjbinding/PropID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributesBitMask"
.end annotation


# static fields
.field public static final FILE_ATTRIBUTE_ARCHIVE:I = 0x20

.field public static final FILE_ATTRIBUTE_COMPRESSED:I = 0x800

.field public static final FILE_ATTRIBUTE_DEVICE:I = 0x40

.field public static final FILE_ATTRIBUTE_DIRECTORY:I = 0x10

.field public static final FILE_ATTRIBUTE_ENCRYPTED:I = 0x4000

.field public static final FILE_ATTRIBUTE_HIDDEN:I = 0x2

.field public static final FILE_ATTRIBUTE_NORMAL:I = 0x80

.field public static final FILE_ATTRIBUTE_OFFLINE:I = 0x1000

.field public static final FILE_ATTRIBUTE_READONLY:I = 0x1

.field public static final FILE_ATTRIBUTE_REPARSE_POINT:I = 0x400

.field public static final FILE_ATTRIBUTE_SPARSE_FILE:I = 0x200

.field public static final FILE_ATTRIBUTE_SYSTEM:I = 0x4

.field public static final FILE_ATTRIBUTE_TEMPORARY:I = 0x100

.field public static final FILE_ATTRIBUTE_UNIX_EXTENSION:I = 0x8000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
