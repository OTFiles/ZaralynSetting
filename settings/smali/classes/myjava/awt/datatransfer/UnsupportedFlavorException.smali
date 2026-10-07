.class public Lmyjava/awt/datatransfer/UnsupportedFlavorException;
.super Ljava/lang/Exception;
.source "UnsupportedFlavorException.java"


# static fields
.field private static final serialVersionUID:J = 0x4ab7272ac88f5cc1L


# direct methods
.method public constructor <init>(Lmyjava/awt/datatransfer/DataFlavor;)V
    .locals 2
    .param p1, "flavor"    # Lmyjava/awt/datatransfer/DataFlavor;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flavor = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
