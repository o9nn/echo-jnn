.class final Lnet/bytebuddy/jar/asm/CurrentFrame;
.super Lnet/bytebuddy/jar/asm/Frame;
.source "CurrentFrame.java"


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method


# virtual methods
.method execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 52
    new-instance p1, Lnet/bytebuddy/jar/asm/Frame;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p4, p1, p2}, Lnet/bytebuddy/jar/asm/CurrentFrame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/Frame;I)Z

    .line 54
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/CurrentFrame;->copyFrom(Lnet/bytebuddy/jar/asm/Frame;)V

    return-void
.end method
