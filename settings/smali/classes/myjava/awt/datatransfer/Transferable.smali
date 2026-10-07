.class public interface abstract Lmyjava/awt/datatransfer/Transferable;
.super Ljava/lang/Object;
.source "Transferable.java"


# virtual methods
.method public abstract getTransferData(Lmyjava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyjava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
.end method

.method public abstract isDataFlavorSupported(Lmyjava/awt/datatransfer/DataFlavor;)Z
.end method
