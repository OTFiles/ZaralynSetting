.class Ljavax/activation/ObjectDataContentHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private dch:Ljavax/activation/DataContentHandler;

.field private mimeType:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "dch"    # Ljavax/activation/DataContentHandler;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 832
    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    .line 839
    iput-object p2, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    .line 840
    iput-object p3, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    .line 841
    iput-object p1, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    .line 842
    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "ds"    # Ljavax/activation/DataSource;

    .line 888
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getDCH()Ljavax/activation/DataContentHandler;
    .locals 1

    .line 849
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    return-object v0
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 2
    .param p1, "df"    # Lmyjava/awt/datatransfer/DataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyjava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 880
    :cond_0
    invoke-virtual {p0}, Ljavax/activation/ObjectDataContentHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    return-object v0

    .line 883
    :cond_1
    new-instance v0, Lmyjava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Lmyjava/awt/datatransfer/UnsupportedFlavorException;-><init>(Lmyjava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method public declared-synchronized getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 6

    monitor-enter p0

    .line 857
    :try_start_0
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_1

    .line 858
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_0

    .line 861
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 862
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    new-instance v2, Ljavax/activation/ActivationDataFlavor;

    iget-object v3, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 863
    iget-object v4, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    iget-object v5, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    aput-object v2, v0, v1

    .line 866
    :cond_1
    :goto_0
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 856
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 898
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 899
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 900
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 901
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 902
    .local v0, "osw":Ljava/io/OutputStreamWriter;
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 907
    .end local v0
    :goto_0
    return-void

    .line 905
    :cond_2
    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no object DCH for MIME type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
